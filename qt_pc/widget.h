#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QTimer>

namespace Ui {
class Widget;
}

class KBusTestWorker;
class Widget : public QWidget
{
    Q_OBJECT
public:
    explicit Widget(QWidget *parent = nullptr);
    ~Widget();

    void sendMotors();
    void sendMotors_rotation();

    void getTelemetry();

private slots:
    void on_pB_send_clicked();

    void on_cB_fix_motors_clicked(bool checked);

    void on_hS_M1_valueChanged(int value);

    void on_sB_M1_valueChanged(double arg1);

    void on_cB_ena_clicked();

    void on_cB_dir_clicked();

private:
    Ui::Widget *ui;
    KBusTestWorker * worker;
    QTimer *timer;
};

#endif // WIDGET_H
