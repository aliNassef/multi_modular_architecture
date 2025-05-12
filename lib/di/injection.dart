import 'package:advanced_course/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getit = GetIt.instance;

@injectableInit
void configureDependencies(String? environment) =>
    getit.init(environment: environment);
