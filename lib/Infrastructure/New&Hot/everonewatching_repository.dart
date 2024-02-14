// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/New&hot/i_everyonwwatching_repo.dart';
import 'package:newtflix_dupli/Domain/New&hot/model/everyone_watching.dart';
import 'package:newtflix_dupli/Domain/core/api_end_point.dart';

import '../../Domain/core/failures/main_failure.dart';

@LazySingleton(as: IEveryoneWatchingRepo)
class GetPopular implements IEveryoneWatchingRepo {
  @override
  Future<Either<MainFailure, EveryoneWatching>> getpopilarmovies() async {
    try {
      final response =
          await Dio(BaseOptions()).get(Apiendpoints.everyonewatching);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popular = EveryoneWatching.fromJson(response.data);
        print(popular);

        return Right(popular);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      // print(e.toString());
      return left(const MainFailure.clientfailure());
    }
  }

  @override
  Future<Either<MainFailure, EveryoneWatching>> comingsoon() async {
    try {
      final response = await Dio(BaseOptions()).get(Apiendpoints.comingsoon);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popular = EveryoneWatching.fromJson(response.data);
        // print(popular);

        return Right(popular);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      // print(e.toString());
      return left(const MainFailure.clientfailure());
    }
  }
}
