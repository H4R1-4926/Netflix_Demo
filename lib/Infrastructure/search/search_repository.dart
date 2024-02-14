import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/Search/i_search_repo.dart';
import 'package:newtflix_dupli/Domain/Search/model/search_resp.dart';
import 'package:newtflix_dupli/Domain/core/api_end_point.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';

@LazySingleton(as: ISearchRepo)
class SearchResult implements ISearchRepo {
  @override
  Future<Either<MainFailure, SearchResp>> searchresult(
      {required String searchQuary}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
          Apiendpoints.serachresultapi,
          queryParameters: {'query': searchQuary});
      // print(response.data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchresult = SearchResp.fromJson(response.data);

        return Right(searchresult);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      // print(e.toString());
      return left(const MainFailure.clientfailure());
    }
  }
}
