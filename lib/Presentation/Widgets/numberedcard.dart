import 'package:flutter/material.dart';

import '../../core/constats.dart';
import '../home/widgets/number_card.dart';
import 'main_title.dart';

class Numbertilecard extends StatelessWidget {
  final List<String> poster;
  const Numbertilecard({
    super.key,
    required this.poster,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Maintitle(title: 'Top 10 Tv Shows in India Today'),
        ),
        sizedboxhight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(
                index: index,
                img: poster[index],
              ),
            ),
          ),
        )
      ],
    );
  }
}
