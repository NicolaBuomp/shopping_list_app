import 'package:dio/dio.dart';
import '../config/api_config.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<Response> get(String endpoint) async {
    return await _dio.get(endpoint);
  }

  Future<Response> post(String endpoint, dynamic data) async {
    return await _dio.post(endpoint, data: data);
  }

  Future<Response> put(String endpoint, dynamic data) async {
    return await _dio.put(endpoint, data: data);
  }

  Future<Response> delete(String endpoint) async {
    return await _dio.delete(endpoint);
  }
}