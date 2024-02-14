import 'package:flutter/material.dart';

import 'icon_button.dart';

class Frontcardwidget extends StatelessWidget {
  final String img;
  const Frontcardwidget({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 550,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(img),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Custombuttonwidget(icon: Icon(Icons.add), title: 'My List'),
              _playbutton(),
              const Custombuttonwidget(
                  icon: Icon(Icons.info_outline), title: 'INfO'),
            ],
          ),
        ),
      ],
    );
  }

  ElevatedButton _playbutton() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.play_arrow),
      label: const Text('Play'),
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          iconSize: MaterialStatePropertyAll(33),
          textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 18))),
    );
  }
}
