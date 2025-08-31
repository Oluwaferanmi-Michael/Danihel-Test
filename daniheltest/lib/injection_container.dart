import 'package:daniheltest/util/styles/app_text.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void dependencySetup() {
  getIt.registerSingleton<AppText>(AppText());
  // getIt.reset();
}

AppText get $appTextStyles => getIt.get<AppText>();
