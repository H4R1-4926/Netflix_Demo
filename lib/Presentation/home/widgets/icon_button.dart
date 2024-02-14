import 'package:flutter/material.dart';

class Custombuttonwidget extends StatelessWidget {
  final Icon icon;
  final String title;
  const Custombuttonwidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          iconSize: 30,
          padding: const EdgeInsets.only(top: 5),
        ),
        Text(
          title,
        ),
      ],
    );
  }
}
