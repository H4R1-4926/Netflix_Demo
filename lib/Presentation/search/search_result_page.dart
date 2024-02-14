import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:newtflix_dupli/Presentation/search/widgets/SearchTitle.dart';
import 'package:newtflix_dupli/application/search/search_bloc.dart';

import 'package:newtflix_dupli/core/constats.dart';

import '../../core/strings.dart';

class Searchresultpage extends StatelessWidget {
  const Searchresultpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Searchtitletext(title: 'Movies & Tv'),
        sizedboxhight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 13,
                crossAxisSpacing: 13,
                childAspectRatio: 1 / 1.4,
                children: List.generate(
                  state.search.length,
                  (index) {
                    final movie = state.search[index];
                    return MainCard(
                      imageurl: '$kimgAppendUrl${movie.posterPath}',
                    );
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageurl;
  const MainCard({super.key, required this.imageurl});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(imageurl)),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
