#include "podcastcontroller.h"

podcastController::podcastController()
{
    playlist = new QMediaPlaylist;
    player = new QMediaPlayer;

    //Nihat SIRDAR 28-November-2022 Podcast         ->  https://feeds.soundcloud.com/stream/1391761618-radyolandpodcast-nihatla-muhabbet-28-kasim-2022.mp3
    //Nihat SIRDAR 25-November-2022 Podcast         ->  https://feeds.soundcloud.com/stream/1390141684-radyolandpodcast-nihatla-muhabbet-25-kasim-2022.mp3
    //Nihat'la Sivrisinek 24-November-2022 Podcast  ->  https://feeds.soundcloud.com/stream/1389861769-radyolandpodcast-nihatla-sivrisinek-24-kasim-2022.mp3
    //Nihat SIRDAR 24-November-2022 Podcast         ->  https://feeds.soundcloud.com/stream/1389437296-radyolandpodcast-nihatla-muhabbet-24-kasim-2022.mp3
    //Nihat'la Sivrisinek 23-November-2022 Podcast  ->  https://feeds.soundcloud.com/stream/1389201280-radyolandpodcast-nihatla-sivrisinek-23-kasim-2022.mp3
}

void podcastController::playPodcast1()
{
    qDebug() << "Clicked!";
    player->stop();
    playlist->clear();
    playlist->addMedia(QUrl("https://feeds.soundcloud.com/stream/1396303042-radyolandpodcast-nihatla-muhabbet-5-aralik-2022.mp3"));     //Nihat SIRDAR 5-December-2022 Podcast
    player->setPlaylist(playlist);
    player->play();
}

void podcastController::playPodcast2()
{
    player->stop();
    playlist->clear();
    playlist->addMedia(QUrl("https://feeds.soundcloud.com/stream/1393547737-radyolandpodcast-nihatla-sivrisinek-30-kasim-2022.mp3"));     //Nihat'la Sivrisinek 30-November-2022 Podcast
    player->setPlaylist(playlist);
    player->play();
}

void podcastController::playPodcast3()
{
    player->stop();
    playlist->clear();
    playlist->addMedia(QUrl("https://feeds.soundcloud.com/stream/1393178470-radyolandpodcast-nihatla-muhbabbet-30-kasim-2022.mp3"));     //Nihat SIRDAR 30-November-2022 Podcast
    player->setPlaylist(playlist);
    player->play();
}

void podcastController::playPodcast4()
{
    player->stop();
    playlist->clear();
    playlist->addMedia(QUrl("https://feeds.soundcloud.com/stream/1390420297-radyolandpodcast-nihatla-sivrisinek-25-kasim-2023.mp3"));     //Nihat'la Sivrisinek 25-November-2022 Podcast
    player->setPlaylist(playlist);
    player->play();
}
