// ignore_for_file: unrelated_type_equality_checks

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:grad_project/core/local/local_data.dart';
import 'package:grad_project/core/network/end_points.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api_response.dart';

class APIHelper {
  // singleton
  APIHelper._internal();
  static final APIHelper _apiHelper = APIHelper._internal();
  factory APIHelper() {
    return _apiHelper;
  }

  // declaring dio
  Dio dio = Dio(
    BaseOptions(
      baseUrl: EndPoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('access_token');
  }

  Future<ApiResponse> _checkConnectivityAndMakeRequest(
      Future<Response> Function() request) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return ApiResponse(
        status: false,
        statusCode: 0,
        message: "No internet connection. Please check your network settings.",
      );
    }
    try {
      var response = await request();
      return ApiResponse.fromResponse(response);
    } catch (e) {
      return ApiResponse.fromError(e);
    }
  }

  // get request
  Future<ApiResponse> getRequest({
    required String endPoint,
    Map<String, dynamic>? data,
    bool isFormData = true,
    bool isAuthorized = true,
  }) async {
    return _checkConnectivityAndMakeRequest(() => dio.get(endPoint,
        data: isFormData ? FormData.fromMap(data ?? {}) : data,
        options: Options(headers: {
          if (isAuthorized) "Authorization": "Bearer ${LocalData.accessToken}"
        })));
  }

  // post
  Future<ApiResponse> postRequest({
    required String endPoint,
    dynamic data,
    bool isFormData = true,
    bool isAuthorized = true,
  }) async {
    return _checkConnectivityAndMakeRequest(() => dio.post(endPoint,
        data:
            isFormData ? (data != null ? FormData.fromMap(data) : null) : data,
        options: Options(headers: {
          if (isAuthorized) "Authorization": "Bearer ${LocalData.accessToken}",
          if (!isFormData) "Content-Type": "application/json",
        })));
  }

  Future<ApiResponse> putRequest({
    required String endPoint,
    Map<String, dynamic>? data,
    bool isFormData = true,
    bool isAuthorized = true,
  }) async {
    return _checkConnectivityAndMakeRequest(() => dio.put(endPoint,
        data: isFormData ? FormData.fromMap(data ?? {}) : data,
        options: Options(headers: {
          if (isAuthorized) "Authorization": "Bearer ${LocalData.accessToken}"
        })));
  }

  Future<ApiResponse> deleteRequest({
    required String endPoint,
    Map<String, dynamic>? data,
    bool isFormData = true,
    bool isAuthorized = true,
  }) async {
    return _checkConnectivityAndMakeRequest(() => dio.delete(endPoint,
        data: isFormData ? FormData.fromMap(data ?? {}) : data,
        options: Options(headers: {
          if (isAuthorized) "Authorization": "Bearer ${LocalData.accessToken}"
        })));
  }
}
