import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:newtflix_dupli/Domain/core/DI/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInject() async {
  await $initGetIt(getIt, environment: Environment.prod);
}
