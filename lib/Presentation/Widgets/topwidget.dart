import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newtflix_dupli/core/constats.dart';

class TopbarWidget extends StatelessWidget {
  const TopbarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sizedboxwidth,
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 25,
        ),
        sizedboxwidth,
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(profilepic))),
        ),
        sizedboxwidth
      ],
    );
  }
}
