import 'package:data/constants/constants.dart';
import 'package:data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  const DioFactory();
  Future<Dio> getDio() async {
    Dio dio = Dio();
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: "Your token",
      defaultLanguage: "app_language",
      clientId: "app_client_id",
    };
    dio.options = BaseOptions(
      baseUrl: '',
      headers: headers,
      receiveTimeout: Duration(seconds: 30),
      sendTimeout: Duration(seconds: 30),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          request: true,
        ),
      );
    }
    return dio;
  }
}
