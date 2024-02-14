import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtflix_dupli/Domain/core/debounce/debounce.dart';
import 'package:newtflix_dupli/Presentation/search/search_result_page.dart';

import 'package:newtflix_dupli/Presentation/search/widgets/search_idle.dart';
import 'package:newtflix_dupli/application/search/search_bloc.dart';

class Searchpage extends StatelessWidget {
  Searchpage({super.key});

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.2),
              prefixIcon: const Icon(Icons.search),
              suffixIcon: const Icon(Icons.close_rounded),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                _debouncer.run(() {
                  context
                      .read<SearchBloc>()
                      .add(SearchScreen(movieQuery: value));
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.search.isEmpty) {
                  return const Searchidlewidget();
                } else {
                  return const Searchresultpage();
                }
              },
            ))
            // const Expanded(child: Searchresultpage())
          ],
        ),
      )),
    );
  }
}
