import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:gratitudejournal/services/apiServices.dart';

final locator = GetIt.instance;

void setupLoactor() {
  log("REGISTER STUFF");
  locator.registerLazySingleton<ApiServices>(() => ApiServices());
}
