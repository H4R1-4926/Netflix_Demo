import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../application/everyone_waatching/every_one_watching_bloc.dart';
import '../../core/constats.dart';
import 'Widgets/comingsoon_widget.dart';
import 'Widgets/everonewatchingwid.dart';

class Newspage extends StatelessWidget {
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EveryOneWatchingBloc>().add(const Initialized());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EveryOneWatchingBloc>().add(const Coming());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'New & Hot',
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    sizedboxwidth,
                    const Icon(
                      Icons.cast,
                      size: 30,
                    ),
                    sizedboxwidth,
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(profilepic),
                        ),
                      ),
                    ),
                    sizedboxwidth,
                  ],
                ),
              ),
            ],
          ),
          bottom: TabBar(
            tabs: const [
              Tab(
                text: '🍿 Coming soon',
              ),
              Tab(
                text: '👀 Everyone\'s Watching',
              )
            ],
            indicator: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(35)),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            labelStyle: const TextStyle(fontWeight: FontWeight.w900),
            indicatorWeight: 0,
          ),
        ),
        body: TabBarView(children: [
          _buildComingsoon(),
          _buildEveryonewatching(),
        ]),
      ),
    );
  }

  Widget _buildComingsoon() {
    return BlocBuilder<EveryOneWatchingBloc, EveryOneWatchingState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Icon(Icons.wifi),
          );
        } else if (state.upcoming.isEmpty) {
          return const Center(
            child: Text('List is Empty'),
          );
        }
        return ListView.builder(
          itemBuilder: (context, index) {
            final upc = state.upcoming[index];
            // print(upc.date);
            final _date = DateTime.parse(upc.date!);

            final formatedDate = DateFormat.yMMMMd('en_US').format(_date);
            return ComingsoonWidget(
              index: index,
              date: upc.date!.split('-')[2],
              month:
                  formatedDate.split(' ').first.substring(0, 3).toUpperCase(),
            );
          },
          itemCount: state.upcoming.length,
          shrinkWrap: true,
        );
      },
    );
  }

  Widget _buildEveryonewatching() {
    return BlocBuilder<EveryOneWatchingBloc, EveryOneWatchingState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Icon(Icons.wifi),
          );
        } else if (state.getDetails.isEmpty) {
          return const Center(
            child: Text('List is Empty'),
          );
        }
        return ListView.builder(
          itemBuilder: (context, index) => Everyoneswatchingwidget(
            index: index,
          ),
          itemCount: state.getDetails.length,
        );
      },
    );
  }
}
