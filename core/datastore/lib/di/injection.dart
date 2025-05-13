import 'package:datastore/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
@InjectableInit()
void configureDatastoreDependencies(GetIt getit, String? env) => getit.init(environment: env);