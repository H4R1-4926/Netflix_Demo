// ignore_for_file: camel_case_types, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:newtflix_dupli/Presentation/Widgets/topwidget.dart';
import 'package:newtflix_dupli/application/download/download_bloc.dart';
import 'package:newtflix_dupli/core/colors.dart';
import 'package:newtflix_dupli/core/constats.dart';
import 'package:newtflix_dupli/core/strings.dart';

class Downloadspage extends StatelessWidget {
  const Downloadspage({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetlist = [
      const _smartdownloads(),
      const Section2(),
      const Section3(),
    ];
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TopbarWidget(
            title: 'Download',
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (ctx, index) => widgetlist[index],
          separatorBuilder: (ctx, index) => const SizedBox(height: 30),
          itemCount: widgetlist.length,
        ));
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<DownloadBloc>(context)
      //     .add(const DownloadEvent.getdownloadimg());
      context.read<DownloadBloc>().add(const DownloadEvent.getdownloadimg());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads For You',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          textAlign: TextAlign.center,
        ),
        sizedboxhight,
        const Text(
          'We will indroduce a personalised selection of\n movies and shows for you, so there\'s\n always something to watch on your\n device.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: BlocBuilder<DownloadBloc, DownloadState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.getimg.isEmpty) {
                return const Center(
                  child: Text('List Is Empty'),
                );
              }
              return Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.31,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                  ),
                  Downloadavatarwidget(
                    imagelist: '$kimgAppendUrl${state.getimg[0].postarPath}',
                    margin: const EdgeInsets.only(left: 180, bottom: 5),
                    angle: 16,
                    size: Size(size.width * 0.32, size.height * 0.23),
                    radius: 10,
                  ),
                  Downloadavatarwidget(
                    imagelist: '$kimgAppendUrl${state.getimg[1].postarPath}',
                    margin: const EdgeInsets.only(right: 180, bottom: 5),
                    angle: -16,
                    size: Size(size.width * 0.32, size.height * 0.23),
                    radius: 10,
                  ),
                  Downloadavatarwidget(
                    imagelist: '$kimgAppendUrl${state.getimg[8].postarPath}',
                    margin: const EdgeInsets.only(top: 10),
                    size: Size(size.width * 0.40, size.height * 0.25),
                    radius: 10,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(200, 83, 51, 241))),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                  color: kwhitecolor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7))),
              backgroundColor: MaterialStateProperty.all<Color>(kwhitecolor)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What You Can Download',
              style: TextStyle(
                  color: backgroundcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _smartdownloads extends StatelessWidget {
  const _smartdownloads();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        sizedboxwidth,
        Icon(Icons.settings_outlined),
        sizedboxwidth,
        Text('Smart Downloading')
      ],
    );
  }
}

class Downloadavatarwidget extends StatelessWidget {
  const Downloadavatarwidget({
    super.key,
    required this.imagelist,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final double angle;
  final String imagelist;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imagelist))),
      ),
    );
  }
}
