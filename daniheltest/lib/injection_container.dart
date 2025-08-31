import 'package:daniheltest/util/styles/app_text.dart';
import 'package:daniheltest/util/styles/insets.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void dependencySetup() {
  getIt.registerSingleton<AppText>(AppText());
  getIt.registerSingleton<Insets>(Insets());
}

AppText get $appTextStyles => getIt.get<AppText>();
Insets get $insets => getIt.get<Insets>();
