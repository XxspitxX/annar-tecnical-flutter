
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:models/exceptions/api_exceptions.dart';

@lazySingleton
class ApiSource {
  final Dio dio;
  ApiSource(this.dio);

 Future<T> getApi<T>(
    String endpoint,
    T Function(dynamic value) mapperFunction, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    bool? isPlainTextResponse,
    CancelToken? cancelToken,
  }) async {
    final bool isStringResponse = isPlainTextResponse ?? false;

    final response = handleResponse(
      () => isStringResponse
          ? dio.get<String>(
              endpoint,
              options: options,
              queryParameters: queryParameters,
              cancelToken: cancelToken,
            )
          : dio.get(
              endpoint,
              options: options,
              queryParameters: queryParameters,
              cancelToken: cancelToken,
            ),
      mapperFunction,
    );

    return response;
  }

  Future<T> postApi<T>(
    String endpoint,
    T Function(dynamic value) mapperFunction, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = handleResponse(
        () => dio.post(
          endpoint,
          options: options,
          queryParameters: queryParameters,
          data: data,
          cancelToken: cancelToken,
        ),
        mapperFunction,
      );

      return response;
    }  catch (e) {
      throw ApiException();
      
    }
  }

  Future<T> handleResponse<T>(
    Future<Response<dynamic>> Function() handler,
    T Function(dynamic value) mapperFunction,
  ) async {
    try {
      
      final response = await handler();
      return mapperFunction(response.data);
    } on DioException  {
      throw ApiException();
    } catch (error) {
      throw ApiException();
    }
  }
}