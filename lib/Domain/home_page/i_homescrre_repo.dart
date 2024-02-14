import 'package:dartz/dartz.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';
import 'package:newtflix_dupli/Domain/home_page/model/home_page.dart';

abstract class HomeScreenPage {
  Future<Either<MainFailure, HomeMainScreen>> getTvPostar();
  Future<Either<MainFailure, HomeMainScreen>> getMoviePostar();
}
