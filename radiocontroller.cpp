#include "radiocontroller.h"

radioController::radioController()
{
    playlist = new QMediaPlaylist;
    player = new QMediaPlayer;
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
