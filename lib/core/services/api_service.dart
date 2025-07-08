import 'package:dio/dio.dart';

const String devToken = 'Bearer 185|coE42iPw8dxUMCBiN0uoE3H2nAjycHvUZ6YXuhB8152bb67c'; // ✅ لازم Bearer

class ApiService {
  final Dio dio;
  final String _baseUrl = "https://9902bcdd27ca.ngrok-free.app/api";

  ApiService({required this.dio}) {
    // ضيف التوكن للهيدر صح
    dio.options.headers['Authorization'] = devToken;
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get('$_baseUrl/$endPoint');
    return response.data;
  }
}