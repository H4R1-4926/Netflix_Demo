import 'package:dartz/dartz.dart';
import 'package:newtflix_dupli/Domain/Search/model/search_resp.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';

abstract class ISearchRepo {
  Future<Either<MainFailure, SearchResp>> searchresult(
      {required String searchQuary});
}
