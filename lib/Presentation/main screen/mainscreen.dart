import 'package:flutter/material.dart';
import 'package:newtflix_dupli/Presentation/Downloads/widgets/downloadspage.dart';
import 'package:newtflix_dupli/Presentation/Fast%20laugh/reels.dart';
import 'package:newtflix_dupli/Presentation/home/home.dart';
import 'package:newtflix_dupli/Presentation/main%20screen/widgets/bottomnavigation.dart';
import 'package:newtflix_dupli/Presentation/new%20&%20hot/newspage.dart';
import 'package:newtflix_dupli/Presentation/search/Search_page.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  Home({super.key});

  final _pages = [
    Homepage(),
    Newspage(),
    Fastlaugh(),
    Searchpage(),
    Downloadspage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexchangenoti,
        builder: (context, value, _) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: Bottomnav(),
    );
  }
}
