#include "widget.h"
#include "ui_widget.h"
#include "kbusserialport.h"
#include "kbustestworker.h"

#include <QInputDialog>

#define USER_DATA_COPY(n, from, to, pos, direction) do {\
        if(direction) {\
            while((n)--) {\
                *(to)++ = *((from) + (n));\
                (*(pos))++;\
            }\
        } else {\
            while((n)--) {\
                *(to)++ = *(from)++;\
                (*(pos))++;\
            }\
        }\
} while(0UL)

float readFloat(uint8_t *data, uint16_t *pos, bool bn) {
    uint8_t n = 4;
    float value = 0.0;
    uint8_t * ptr_from = (uint8_t *)(data + *pos);
    uint8_t * ptr_to = (uint8_t *)(&value);
    USER_DATA_COPY(n, ptr_from, ptr_to, pos, bn);
    return value;
}


Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);

    worker = new KBusTestWorker(this);
    auto port = new KBusSerialPort(this);
    port->port = new QSerialPort(this);
    auto txt = QInputDialog::getText(nullptr, "com name", "", QLineEdit::Normal, "COM5");
    port->port->setPortName(txt);
    port->port->setParity(QSerialPort::NoParity);
    port->port->setStopBits(QSerialPort::OneStop);
    port->port->setFlowControl(QSerialPort::NoFlowControl);
    //port->port->setBaudRate(QSerialPort::Baud38400); //Baud115200 Baud38400
    port->port->setBaudRate((QSerialPort::Baud115200)); //Baud115200 Baud38400
    port->port->open(QIODevice::ReadWrite);
    worker->setupBus(port);


    connect(worker, &KBusTestWorker::packetReceived, this, [this](const QByteArray s) {

    });
}

Widget::~Widget()
{
    delete ui;
}

void Widget::on_pB_send_clicked()
{
    worker->send(ui->lE_cmd->text());
}


void Widget::sendMotors()
{
    const float CMX = 8.0;
    const float CDV = 1.0;
    QByteArray ar;
    ar.resize(10);
    int pos = 0;
    ar[pos++] = 0x00;
    ar[pos++] = ui->cB_dir->isChecked();
    ar[pos++] = ui->cB_ena->isChecked();


    quint32 motorvalue = ui->hS_M1->value();
    quint8* ptr = (quint8*)&motorvalue;
    ar[pos++] = ptr[0];
    ar[pos++] = ptr[1];
    ar[pos++] = ptr[2];
    ar[pos++] = ptr[3];
    worker->sendPacket(ar);

    float freq = 84000000.0 / (float)motorvalue;
    ui->sB_freq->setValue(freq);

    float rot_per_sec = (freq * (CMX/CDV)) / (40000.0);
    ui->sB_rps->setValue(rot_per_sec);
}

void Widget::sendMotors_rotation()
{
    const float CMX = 8.0;
    const float CDV = 1.0;
    QByteArray ar;
    ar.resize(10);
    int pos = 0;
    ar[pos++] = 0x00;
    ar[pos++] = ui->cB_dir->isChecked();
    ar[pos++] = ui->cB_ena->isChecked();


    quint32 motorvalue = ui->hS_M1->value();
    quint8* ptr = (quint8*)&motorvalue;
    ar[pos++] = ptr[0];
    ar[pos++] = ptr[1];
    ar[pos++] = ptr[2];
    ar[pos++] = ptr[3];
    worker->sendPacket(ar);

    float freq = 84000000.0 / (float)motorvalue;
    ui->sB_freq->setValue(freq);

    float rot_per_sec = (freq * (CMX/CDV)) / (40000.0);
    ui->sB_rps->setValue(rot_per_sec);
}



void Widget::on_cB_fix_motors_clicked(bool checked)
{
    (void)checked;
    sendMotors();
}


void Widget::on_hS_M1_valueChanged(int value)
{
    ui->sB_M1->setValue(value);
    sendMotors();
}


void Widget::on_sB_M1_valueChanged(double arg1)
{
    ui->hS_M1->setValue(arg1);
    sendMotors();
}


void Widget::on_cB_ena_clicked()
{
    sendMotors();
}


void Widget::on_cB_dir_clicked()
{
    sendMotors();
}

