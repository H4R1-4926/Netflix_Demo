import 'package:dartz/dartz.dart';
import 'package:newtflix_dupli/Domain/core/failures/main_failure.dart';
import 'package:newtflix_dupli/Domain/downolads/models/download.dart';

abstract class IDownloadRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadimg();
}
