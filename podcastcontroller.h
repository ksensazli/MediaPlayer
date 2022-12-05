#ifndef PODCASTCONTROLLER_H
#define PODCASTCONTROLLER_H

#include "radiocontroller.h"

class podcastController : public QObject
{
    Q_OBJECT

    public:
        podcastController();
        QMediaPlaylist *playlist;
        QMediaPlayer *player;

    public slots:
        void playPodcast1();
        void playPodcast2();
        void playPodcast3();
        void playPodcast4();
//        void playPodcast5();
//        void playPodcast6();
//        void playPodcast7();
//        void playPodcast8();

};

#endif // PODCASTCONTROLLER_H
