import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtflix_dupli/application/everyone_waatching/every_one_watching_bloc.dart';
import 'package:newtflix_dupli/core/Strings.dart';

import '../../../core/constats.dart';
import 'comingsoon_widget.dart';

class Everyoneswatchingwidget extends StatelessWidget {
  final int index;
  const Everyoneswatchingwidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EveryOneWatchingBloc, EveryOneWatchingState>(
      builder: (context, state) {
        final mov = state.getDetails[index];
        return Container(
          width: double.infinity,
          height: 480,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Vidwidget(img: '$kimgAppendUrl${mov.backDroppath}'),
              sizedboxhight,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  '$kimgAppendUrl${mov.backDroppath}'))),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 60,
                    color: Colors.black,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Iconwid(
                              title: 'Share',
                              fronticon: (Icons.send_outlined),
                              iconsize: 25,
                              textsize: 12),
                          Iconwid(
                              title: 'My List',
                              fronticon: (Icons.add),
                              iconsize: 25,
                              textsize: 12),
                          Iconwid(
                              title: 'Play',
                              fronticon: (Icons.play_arrow),
                              iconsize: 25,
                              textsize: 12)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              sizedboxhight10,
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Boldtxtwid(title: mov.title ?? 'no title'),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Descriptiontxtwid(title: mov.overview ?? 'no overview'),
              )
            ],
          ),
        );
      },
    );
  }
}
