// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/core/api_end_point.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';
import 'package:newtflix_dupli/Domain/downolads/i_download_repo.dart';
import 'package:newtflix_dupli/Domain/downolads/models/download.dart';

@LazySingleton(as: IDownloadRepo)
class GetImg implements IDownloadRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadimg() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(Apiendpoints.downloadapi);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final download = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        print(download);
        return Right(download);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      // print(e.toString());
      return left(const MainFailure.clientfailure());
    }
  }
}
