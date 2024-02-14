import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/core/api_end_point.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';
import 'package:newtflix_dupli/Domain/home_page/i_homescrre_repo.dart';
import 'package:newtflix_dupli/Domain/home_page/model/home_page.dart';

@LazySingleton(as: HomeScreenPage)
class GetPostar implements HomeScreenPage {
  @override
  Future<Either<MainFailure, HomeMainScreen>> getMoviePostar() async {
    try {
      final response =
          await Dio(BaseOptions()).get(Apiendpoints.postapathTvShow);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popular = HomeMainScreen.fromJson(response.data);

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
  Future<Either<MainFailure, HomeMainScreen>> getTvPostar() async {
    try {
      final response =
          await Dio(BaseOptions()).get(Apiendpoints.postapathMovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popular = HomeMainScreen.fromJson(response.data);

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
