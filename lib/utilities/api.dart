import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'core/abstractions/build_config.dart';
import 'package:dio/adapter.dart';

export 'package:dio/dio.dart';

class Api {
  late Dio dio;
  final BuildConfig buildConfig;

  Api({
    required this.buildConfig,
  }) {
    dio = Dio(BaseOptions(
      baseUrl: buildConfig.baseUrl,
      receiveTimeout: 15000,
      connectTimeout: 15000,
      sendTimeout: 15000,
    ));

    dio.interceptors.addAll({
      AppInterceptors(buildConfig: buildConfig, dio: dio),
    });

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
}

class AppInterceptors extends Interceptor {
  final Dio dio;
  final BuildConfig buildConfig;

  AppInterceptors({required this.dio, required this.buildConfig});

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    dio.options.baseUrl = buildConfig.baseUrl;

    if (kDebugMode) {
      print(err.response?.data..toString());
      print(err.response?.statusCode.toString());
    }

    switch (err.type) {
      case DioErrorType.connectTimeout:
        throw ConnectTimeoutException(err.requestOptions);
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(res: err.response, r: err.requestOptions);
          case 401:
            throw UnauthorizedException(
                res: err.response, r: err.requestOptions);
          case 404:
            throw NotFoundException(res: err.response, r: err.requestOptions);
          case 409:
            throw ConflictException(res: err.response, r: err.requestOptions);
          case 500:
            throw InternalServerErrorException(
                res: err.response, r: err.requestOptions);
          default:
            throw UnknownException(res: err.response, r: err.requestOptions);
        }
      case DioErrorType.cancel:
        throw CustomException(r: err.requestOptions);
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    // return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (kDebugMode) {
      log(options.baseUrl.toString());
      log(options.path.toString());
      log(options.headers.toString());
      log(options.data.toString());
    }
    return handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    dio.options.baseUrl = buildConfig.baseUrl;
    log(response.data.toString());
    log(response.statusCode.toString());

    if (response.data['success'] == false) {
      final data = response.data['errorList'];
      // log(data.join('\n').toString());

      throw DioError(
          requestOptions: RequestOptions(
              path: response.realUri.path, data: data.join('\n')),
          error: data.join('\n'),
          type: DioErrorType.cancel);
    }
    return handler.next(response);
  }
}

class BadRequestException extends DioError {
  Response? res;
  BadRequestException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Something went wrong.\nPlease try again.';
  }
}

class ConflictException extends DioError {
  Response? res;
  ConflictException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Something went wrong.\nPlease try again.';
  }
}

class ConnectTimeoutException extends DioError {
  ConnectTimeoutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Connection timeout';
  }
}

class CustomException extends DioError {
  Response? res;
  RequestOptions r;
  CustomException({this.res, required this.r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return r.data;
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out.\nplease try again.';
  }
}

class InternalServerErrorException extends DioError {
  Response? res;
  InternalServerErrorException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Something went wrong.\nPlease try again.';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection to the internet has been lost.\nPlease try again';
  }
}

class NotFoundException extends DioError {
  Response? res;
  NotFoundException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Something went wrong.\nPlease try again.';
  }
}

class RequestEntityTooLargeException extends DioError {
  RequestEntityTooLargeException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Request too large';
  }
}

class UnauthorizedException extends DioError {
  Response? res;
  UnauthorizedException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return res?.data['message'] ?? 'Unauthenticated';
  }
}

class UnknownException extends DioError {
  Response? res;

  UnknownException({this.res, required RequestOptions r})
      : super(requestOptions: r, response: res);

  @override
  String toString() {
    return 'Something went wrong.\nPlease try again.';
  }
}
