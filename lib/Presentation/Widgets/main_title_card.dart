import 'package:flutter/material.dart';
import 'package:newtflix_dupli/Presentation/Widgets/main_card.dart';

import '../../core/constats.dart';

import 'main_title.dart';

class Maintitlecard extends StatelessWidget {
  final String title;
  final List<String> postar;
  const Maintitlecard({
    super.key,
    required this.title,
    required this.postar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Maintitle(title: title),
        ),
        sizedboxhight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              postar.length,
              (index) => Maincards(
                img: postar[index],
              ),
            ),
          ),
        )
      ],
    );
  }
}
