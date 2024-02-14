import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtflix_dupli/Presentation/search/widgets/SearchTitle.dart';
import 'package:newtflix_dupli/application/search/search_bloc.dart';
import 'package:newtflix_dupli/core/constats.dart';

import '../../../core/strings.dart';

// const imageurl =
//     'https://images.thedirect.com/media/article_full/marvel-films-releasing-in-2023-release-date-mcu.jpg?imgeng=cmpr_75/';

class Searchidlewidget extends StatelessWidget {
  const Searchidlewidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<SearchBloc>().add(const Initialscreen()),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtitletext(title: 'Top Searches'),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.iloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while Loading'),
                );
              } else if (state.img.isEmpty) {
                return const Center(
                  child: Text('List Is Empty'),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  final movie = state.img[index];
                  return Topsearchitemtile(
                    title: movie.title ?? movie.name ?? 'No Title Provided',
                    img: '$kimgAppendUrl${movie.bacdropPath}',
                  );
                },
                separatorBuilder: (ctx, index) => sizedboxhight,
                itemCount: state.img.length,
              );
            },
          ),
        )
      ],
    );
  }
}

class Topsearchitemtile extends StatelessWidget {
  final String title;
  final String img;
  const Topsearchitemtile({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    final containerwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            width: containerwidth * 0.35,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(img),
            ))),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        )),
        const Icon(
          Icons.play_circle_outline_rounded,
          size: 47,
        )
      ],
    );
  }
}
