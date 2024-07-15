import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:newtflix_dupli/application/everyone_waatching/every_one_watching_bloc.dart';
import 'package:newtflix_dupli/core/Strings.dart';

import '../../../core/constats.dart';

class ComingsoonWidget extends StatelessWidget {
  final int index;
  final String date;
  final String month;
  const ComingsoonWidget({
    super.key,
    required this.index,
    required this.date,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 55,
          height: 460,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BlocBuilder<EveryOneWatchingBloc, EveryOneWatchingState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text(
                      month,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      date,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                );
              },
            ),
          ),
        ),
        BlocBuilder<EveryOneWatchingBloc, EveryOneWatchingState>(
          builder: (context, state) {
            final upc = state.upcoming[index];
            return Container(
              width: size.width - 55,
              height: 460,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Vidwidget(
                    img: '$kimgAppendUrl${upc.backDroppath}',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        child: Text(
                          upc.title ?? 'No Title',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              overflow: TextOverflow.ellipsis,
                              letterSpacing: -1.5),
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        height: 50,
                        width: 150,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                child: Iconwid(
                                    title: 'Remaind me',
                                    fronticon: (Icons.notifications_none),
                                    iconsize: 20,
                                    textsize: 12),
                              ),
                              Flexible(
                                child: Iconwid(
                                    title: 'info',
                                    fronticon: (Icons.info_outline),
                                    iconsize: 20,
                                    textsize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Coming on $date $month',
                    style: const TextStyle(letterSpacing: 4),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Boldtxtwid(
                    title: upc.title ?? 'No Title',
                  ),
                  sizedboxhight10,
                  Descriptiontxtwid(
                    title: upc.overview ?? 'no overview',
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}

class Descriptiontxtwid extends StatelessWidget {
  final String title;
  const Descriptiontxtwid({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: 4,
    );
  }
}

class Boldtxtwid extends StatelessWidget {
  final String title;
  const Boldtxtwid({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}

class Iconwid extends StatelessWidget {
  final String title;
  final IconData fronticon;
  final double iconsize;
  final double textsize;
  const Iconwid({
    super.key,
    required this.title,
    required this.fronticon,
    required this.iconsize,
    required this.textsize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          fronticon,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textsize),
        )
      ],
    );
  }
}

class Vidwidget extends StatelessWidget {
  final String img;
  const Vidwidget({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
      child: const Padding(
        padding: EdgeInsets.only(right: 5, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.volume_off_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
