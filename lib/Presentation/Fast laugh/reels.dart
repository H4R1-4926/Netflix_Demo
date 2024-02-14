import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtflix_dupli/Presentation/Fast%20laugh/widgeta/vid_list.dart';
import 'package:newtflix_dupli/application/fast_laugh/fast_laugh_bloc.dart';

class Fastlaugh extends StatelessWidget {
  const Fastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FastLaughBloc>().add(const FastLaughEvent.initialize());
    });
    return Scaffold(
      body: SafeArea(child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.isError) {
            return const Center(child: Icon(Icons.wifi));
          } else if (state.videos.isEmpty) {
            return const Center(child: Text('List Is Empty'));
          } else {
            return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videos.length, (index) {
                  return ViseoListInheritedWidget(
                      widget: VideolistWidget(
                        index: index,
                        key: Key(index.toString()),
                        videoPath: 'assets/5.mp4',
                      ),
                      moviedata: state.videos[index]);
                }));
          }
        },
      )),
    );
  }
}


  // return PageView(
  //               scrollDirection: Axis.vertical,
  //               children: List.generate(10, (index) {
  //                 return VideolistWidget(
  //                   intex: index,
  //                 );
  //               }));

                  // if (state.isLoading) {
          //   return const Center(child: CircularProgressIndicator());
          // } else if (state.isError) {
          //   return const Center(child: Icon(Icons.wifi));
          // } else if (state.videos.isEmpty) {
          //   return const Center(child: Text('List Is Empty'));
          // } else {
          
          // }