import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtflix_dupli/Domain/core/DI/injectable.dart';
import 'package:newtflix_dupli/Presentation/main%20screen/mainscreen.dart';
import 'package:newtflix_dupli/application/Home%20Screen/home_bloc_bloc.dart';
import 'package:newtflix_dupli/application/download/download_bloc.dart';
import 'package:newtflix_dupli/application/everyone_waatching/every_one_watching_bloc.dart';
import 'package:newtflix_dupli/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:newtflix_dupli/application/search/search_bloc.dart';
import 'package:newtflix_dupli/core/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInject();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<DownloadBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SearchBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<FastLaughBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<EveryOneWatchingBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<HomeBlocBloc>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: backgroundcolor,
              colorScheme: const ColorScheme.dark(),
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
              )),
          home: Home(),
        ),
      ),
    );
  }
}
