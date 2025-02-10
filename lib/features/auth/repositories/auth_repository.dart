import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shopping_list_app/features/auth/models/user_model.dart';

import '../../../core/service/api_service.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<UserModel?> login(String email, String password) async {
    try {
      final response = await _apiService.post('/auth/login', {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        final user = UserModel.fromJson(response.data);
        await _secureStorage.write(key: 'auth_token', value: user.token);
        return user;
      }
    } catch (e) {
      throw Exception("Errore di login: $e");
    }
    return null;
  }

  Future<void> logout() async {
    await _secureStorage.delete(key: 'auth_token');
  }

  Future<bool> isAuthenticated() async {
    final token = await _secureStorage.read(key: 'auth_token');
    return token != null;
  }
}