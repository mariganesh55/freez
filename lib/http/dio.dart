import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'httpurls.dart';

class DioHelper {
  Dio dio = Dio();

  DioHelper() {
    dio.options.baseUrl = HttpUrls.baseurl;
    dio.options.followRedirects = true;
    // dio.options.receiveDataWhenStatusError = true;
    dio.options.headers[HttpHeaders.acceptHeader] = 'application/json';
    dio.options.validateStatus = (int? status) {
      return true;
      // return status! < 400;
    };
    dio.transformer = JsonTransformer();
    //setup auth interceptor
    _setupAuthInterceptor();
    //setup log for interceptor
    if (DebugMode.isInDebugMode) {
      dio.interceptors.add(LogInterceptor(responseBody: false));
    }
  }

  // ignore: always_declare_return_types
  _setupAuthInterceptor() async {
    dio.interceptors.add(InterceptorsWrapper(onRequest:
        (RequestOptions options, RequestInterceptorHandler handler) async {
      // here we can add request api intercepters
      options.headers["Content-Type"] = "application/json";

      return handler.next(options);
    }, onResponse:
        (Response<dynamic> response, ResponseInterceptorHandler handler) async {
      return handler.next(response);
    }, onError: (DioError error, ErrorInterceptorHandler handler) async {
      _showToast(error.response?.data["err"] ?? 'Something Went wrong');
      return handler.next(error);
    }));
  }

  static FutureOr<bool> checkDioRetry(DioError error) {
    // AppUtils.showErrorToast(error.message);
    return error.type == DioErrorType.other;
  }

  // ignore: always_declare_return_types, unused_element
  _showToast(String text) {
    // WidgetsBinding.instance.addObserver(LifecycleEventHandler(
    //     pausedCallBack: onPauseCallBack, resumeCallBack: onResumeCallBack));
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14.0);
  }

  dynamic errorHandling(DioError e) {
    /// When the server response, but with a incorrect status, such as 404, 503
    if (e.type == DioErrorType.response) {
      return DioErrorType.response;
    } else if (e.type == DioErrorType.connectTimeout) {
      return 'Please check your internet connection';
    } else if (e.type == DioErrorType.receiveTimeout) {
      return 'Unable to connect to the server';
    } else if (e.type == DioErrorType.other) {
      return 'Something went wrong';
    } else if (e.type == DioErrorType.cancel) {
      return 'Something went wrong';
    }
  }

  List<dynamic>? listOfMultiPart(List<File>? file) {
    final List<dynamic> multiPartValues = [];
    for (File element in file!) {
      multiPartValues.add(MultipartFile.fromFile(
        element.path,
        filename: element.path.split('/').last,
      ));
    }
    return multiPartValues;
  }
}

//This transformer runs the json decoding in a background thread.
//Thus returing a Future of Map
class JsonTransformer extends DefaultTransformer {
  JsonTransformer() : super(jsonDecodeCallback: _parseJson);
}

Map<String, dynamic> _parseAndDecode(String response) {
  return jsonDecode(response) as Map<String, dynamic>;
}

Future<Map<String, dynamic>> _parseJson(String text) {
  return compute(_parseAndDecode, text);
}

Dio dio() {
  final Dio dio = DioHelper().dio;
  return dio;
}

class DebugMode {
  static bool get isInDebugMode {
    const bool inDebugMode = true;
    //assert(inDebugMode = true);
    return inDebugMode;
  }
}
