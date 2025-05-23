import 'package:advanced_course/di/injection.config.dart';
import 'package:app_settings/di/injection.dart';
import 'package:datastore/di/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getit = GetIt.instance;

@injectableInit
void configureDependencies(String? environment) {
  getit.init(environment: environment);
  configureAppSettingsDependencies(getit, environment);
  configureDatastoreDependencies(getit, environment);
}
