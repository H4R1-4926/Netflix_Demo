import 'package:flutter/material.dart';

import '../../core/constats.dart';

class Maincards extends StatelessWidget {
  final String img;
  const Maincards({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 130,
      // height: 220,
      decoration: BoxDecoration(
        borderRadius: imageborderraduis_15,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(img),
        ),
      ),
    );
  }
}
