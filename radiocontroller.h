#ifndef RADIOCONTROLLER_H
#define RADIOCONTROLLER_H

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QObject>
#include <QDebug>
#include <QSlider>
#include <QtMultimedia/QMediaPlayer>
#include <QtMultimedia/QMediaPlaylist>
#include <QtMultimedia/QMediaPlayerControl>

class radioController : public QObject
{
    Q_OBJECT

    public:
        radioController();
        QMediaPlaylist *playlist;
        QMediaPlayer *player;
        QSlider *volumeSlider;
        void setVolume(int);
        int volume() const;

    public slots:
        void playSlowturk();
        void playDreamturk();
        void playPowerturk();
};

#endif // RADIOCONTROLLER_H
