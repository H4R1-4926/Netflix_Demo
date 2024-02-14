import 'package:flutter/material.dart';
import 'package:newtflix_dupli/core/colors.dart';

ValueNotifier<int> indexchangenoti = ValueNotifier(0);

class Bottomnav extends StatelessWidget {
  const Bottomnav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchangenoti,
        builder: (context, newindex, _) {
          return BottomNavigationBar(
            currentIndex: newindex,
            onTap: (index) {
              indexchangenoti.value = index;
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections_outlined),
                label: 'New & hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: 'Fast laugh',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_circle_down_rounded),
                label: 'Downloads',
              ),
            ],
            backgroundColor: backgroundcolor,
          );
        });
  }
}
