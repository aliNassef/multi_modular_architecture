import 'package:app_settings/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectableInit
void configureDependencies(GetIt getit, String env) =>
    getit.init(environment: env);
