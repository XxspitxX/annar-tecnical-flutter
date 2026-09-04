import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class SampleAppModule{
  Dio get dio {

    Dio dio = Dio();

    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );
    (dio.httpClientAdapter as dynamic).onHttpClientCreate =
        (HttpClient client) {
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
          return client;
        };
    return dio;
  }
}