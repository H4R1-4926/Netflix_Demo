// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';

import 'package:newtflix_dupli/Domain/downolads/models/download.dart';
import 'package:newtflix_dupli/core/Strings.dart';
import 'package:share_plus/share_plus.dart';

import 'package:video_player/video_player.dart';

import '../../../application/fast_laugh/fast_laugh_bloc.dart';

final videoUrl = [
  'assets/1.mp4'
      'assets/2.mp4'
      'assets/3.mp4'
      'assets/4.mp4'
      'assets/5.mp4'
];

class ViseoListInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads moviedata;

  const ViseoListInheritedWidget(
      {super.key, required this.widget, required this.moviedata})
      : super(child: widget);

  @override
  bool updateShouldNotify(covariant ViseoListInheritedWidget oldWidget) {
    return oldWidget.moviedata != moviedata;
  }

  static ViseoListInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ViseoListInheritedWidget>();
  }
}

class VideolistWidget extends StatelessWidget {
  final int index;
  final String videoPath;
  const VideolistWidget(
      {super.key, required this.index, required this.videoPath});

  @override
  Widget build(BuildContext context) {
    final dp = ViseoListInheritedWidget.of(context)?.moviedata.postarPath;
    // final vidUrl = videoUrl[index % videoUrl.length];
    return Stack(
      children: [
        Videos(
          vUrl: videoPath,
          // ignore: avoid_types_as_parameter_names
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black.withOpacity(0.85),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          size: 25,
                          color: Colors.white,
                        ))),
                //right side

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: dp == null
                            ? null
                            : NetworkImage("$kimgAppendUrl$dp"),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: valueNotifier,
                      builder: (context, newLikedVideos, _) {
                        final _index = index;
                        if (newLikedVideos.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              valueNotifier.value.remove(_index);
                              valueNotifier.notifyListeners();
                            },
                            child: const VideoActions(
                              icon: Icons.emoji_emotions_outlined,
                              title: 'LOL',
                              c: Colors.yellow,
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            valueNotifier.value.add(_index);
                            valueNotifier.notifyListeners();
                          },
                          child: const VideoActions(
                            icon: Icons.emoji_emotions_outlined,
                            title: 'LOL',
                            c: Colors.white,
                          ),
                        );
                      },
                    ),
                    const VideoActions(
                      icon: Icons.add,
                      title: 'My List',
                      c: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        final movieTitle = ViseoListInheritedWidget.of(context)
                            ?.moviedata
                            .title;

                        final movieName = ViseoListInheritedWidget.of(context)
                            ?.moviedata
                            .name;

                        if (movieName != null) {
                          Share.share(movieName);
                        }
                        if (movieTitle != null) {
                          Share.share(movieTitle);
                        }
                      },
                      child: const VideoActions(
                        icon: Icons.share_outlined,
                        title: 'Share',
                        c: Colors.white,
                      ),
                    ),
                    const VideoActions(
                      icon: Icons.play_arrow,
                      title: 'Play',
                      c: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color c;
  const VideoActions(
      {super.key, required this.icon, required this.title, required this.c});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: c,
          ),
          Text(title)
        ],
      ),
    );
  }
}

class Videos extends StatefulWidget {
  final String vUrl;
// final void Function(bool isPlaying) onStateChanged;
  const Videos({
    super.key,
    required this.vUrl,
  });

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  late VideoPlayerController _videoPlayerController;
  late GestureDetector _gestureDetector;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.vUrl);
    _gestureDetector = GestureDetector(
      onTap: () {
        if (_videoPlayerController.value.isPlaying) {
          _videoPlayerController.pause();
        } else {
          _videoPlayerController.play();
        }
      },
    );
    _videoPlayerController.initialize().then((_) {
      setState(() {
        _videoPlayerController.play();
        _videoPlayerController.setLooping(true);
      });
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: Stack(
              children: [VideoPlayer(_videoPlayerController), _gestureDetector],
            ))
        //  _videoPlayerController.value.isInitialized
        //     ? AspectRatio(
        //         aspectRatio: _videoPlayerController.value.aspectRatio,
        //         child: VideoPlayer(_videoPlayerController))
        //     : const Center(
        //         child: CircularProgressIndicator(),
        //       ),
        );
  }
}
