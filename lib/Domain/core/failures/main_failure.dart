import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.serverfailure() = _Serverfailure;
  const factory MainFailure.clientfailure() = _Clientfailure;
}
