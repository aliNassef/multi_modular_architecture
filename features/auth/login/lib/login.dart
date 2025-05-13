 
import 'package:datastore/provider/session_provider.dart';
import 'package:datastore/provider/session_provider_impl.dart';
import 'package:dio/dio.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  Dio dio = Dio();
  SessionProvider sessionProvider = DevSessionProviderImpl();
  }
