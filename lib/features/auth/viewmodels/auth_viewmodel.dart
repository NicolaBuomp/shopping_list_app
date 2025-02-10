import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list_app/features/auth/models/user_model.dart';
import 'package:shopping_list_app/features/auth/repositories/auth_repository.dart';

class AuthViewModel extends StateNotifier<UserModel?> {
  final AuthRepository _authRepository;

  AuthViewModel(this._authRepository) : super(null);

  Future<void> login(String email, String password) async {
    try {
      final user = await _authRepository.login(email, password);
      if (user != null) {
        state = user; // Aggiorna lo stato
      }
    } catch (e) {
      throw Exception("Errore di login");
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
    state = null;
  }

  Future<bool> checkAuthStatus() async {
    return await _authRepository.isAuthenticated();
  }
}

final authViewModelProvider =
StateNotifierProvider<AuthViewModel, UserModel?>(
        (ref) => AuthViewModel(AuthRepository()));