#include "radiocontroller.h"

radioController::radioController()
{
    volumeSlider = new QSlider;
    volumeSlider->setRange(0, 100);
    volumeSlider->setValue(100);
    playlist = new QMediaPlaylist;
    player = new QMediaPlayer;

    connect(volumeSlider, SIGNAL(valueChanged(int)), this, SIGNAL(volumeChanged(int)));
    connect(volumeSlider, SIGNAL(volumeChanged(int)), player, SLOT(setVolume(int)));
}

int radioController::volume() const
{
    return volumeSlider->value();
}

void radioController::setVolume(int volume)
{
    player->setVolume(volume);
}

void radioController::playSlowturk()
{
    player->stop();
    playlist->clear();
    playlist->addMedia(QUrl("https://radyo.duhnet.tv/ak_dtvh_slowturk"));                                   //SLOWTURK RADIO CHANNEL
    player->setPlaylist(playlist);
    player->play();
}

void radioController::playDreamturk()
{
    player->stop();
    playlist->clear();
    playlist->addMedia(QUrl("https://radyo.duhnet.tv/dreamturk"));                                          //DREAMTURK RADIO CHANNEL
    player->setPlaylist(playlist);
    player->play();
}

void radioController::playPowerturk()
{
    player->stop();
    playlist->clear();
    playlist->addMedia(QUrl("https://live.powerapp.com.tr/powerturk/mpeg/icecast.audio?/;stream.mp3"));     //POWERTURK RADIO CHANNEL
    player->setPlaylist(playlist);
    player->play();
}
