import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtflix_dupli/Presentation/Widgets/floatingbar.dart';

import 'package:newtflix_dupli/Presentation/home/widgets/maincard_widget.dart';

import 'package:newtflix_dupli/core/constats.dart';
import 'package:newtflix_dupli/core/strings.dart';

import '../../application/Home Screen/home_bloc_bloc.dart';
import '../Widgets/main_title_card.dart';
import '../Widgets/numberedcard.dart';

ValueNotifier<bool> scrollnoti = ValueNotifier(true);

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBlocBloc>().add(const HomeBlocEvent.getMoviePostar());
    });

    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(logoomage),
              ),
              pinned: false,
              floating: true,
              snap: true,
              flexibleSpace: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        sizedboxwidth,
                        const Icon(
                          Icons.cast,
                          size: 30,
                        ),
                        sizedboxwidth,
                        Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(profilepic))),
                        ),
                        sizedboxwidth,
                      ],
                    ),
                  )
                ],
              ),
            ),
          ];
        },
        body: ValueListenableBuilder(
          valueListenable: scrollnoti,
          builder: (context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollnoti.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollnoti.value = true;
                }

                return true;
              },
              child: Stack(
                children: [
                  BlocBuilder<HomeBlocBloc, HomeBlocState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.iseror) {
                        return const Center(
                          child: Icon(Icons.wifi),
                        );
                      } else if (state.postarMovie.isEmpty ||
                          state.postarTV.isEmpty) {
                        return const Center(
                          child: Text('empty'),
                        );
                      }
                      final mov = state.postarMovie.map((m) {
                        return '$kimgAppendUrl${m.postarPath}';
                      }).toList();
                      final tv = state.postarTV.map((m) {
                        return '$kimgAppendUrl${m.postarPath}';
                      }).toList();
                      return ListView(
                        children: [
                          Column(
                            children: [
                              Frontcardwidget(
                                img: mov[1],
                              ),
                              Maintitlecard(
                                title: 'New Releases',
                                postar: tv.sublist(10, 19),
                              ),
                              sizedboxhight,
                              Maintitlecard(
                                title: 'Trending Now',
                                postar: tv.sublist(0, 9),
                              ),
                              sizedboxhight,
                              Numbertilecard(
                                poster: mov,
                              ),
                              sizedboxhight,
                              Maintitlecard(
                                title: 'Tense Dramas',
                                postar: mov.sublist(10, 19),
                              ),
                              sizedboxhight,
                              Maintitlecard(
                                title: 'South Indian Cinemas',
                                postar: tv.sublist(0, 10),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            scrollnoti.value == true
                                ? const Floatintoolbar()
                                : sizedboxhight10,
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
