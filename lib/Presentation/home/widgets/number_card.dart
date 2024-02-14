import 'package:flutter/material.dart';

import 'package:stroke_text/stroke_text.dart';

import '../../../core/constats.dart';

class NumberCard extends StatelessWidget {
  final int index;
  final String img;
  const NumberCard({super.key, required this.index, required this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 150,
              width: 50,
            ),
            Container(
              width: 130,
              // height: 220,
              decoration: BoxDecoration(
                borderRadius: imageborderraduis_15,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(img),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: -6,
          bottom: -29,
          child: StrokeText(
            text: '${index + 1}',
            strokeColor: Colors.white,
            textColor: Colors.black,
            strokeWidth: 3,
            textStyle:
                const TextStyle(fontSize: 130, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
