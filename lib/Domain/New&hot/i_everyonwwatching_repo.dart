import 'package:dartz/dartz.dart';
import 'package:newtflix_dupli/Domain/New&hot/model/everyone_watching.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';

abstract class IEveryoneWatchingRepo {
  Future<Either<MainFailure, EveryoneWatching>> getpopilarmovies();
  Future<Either<MainFailure, EveryoneWatching>> comingsoon();
}
