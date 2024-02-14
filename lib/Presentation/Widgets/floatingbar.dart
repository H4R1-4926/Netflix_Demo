import 'package:flutter/material.dart';

class Floatintoolbar extends StatelessWidget {
  const Floatintoolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black,
      ),
      width: 220,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Tv Shows',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
          const Text('|'),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Movies',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
          const Text('|'),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Categories',
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
