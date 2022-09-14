import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_ui/features/auth/repository/auth_repository.dart';

final AuthControllerProvider = Provider(
  (ref) {
    final authRepository = ref.watch(AuthRepositoryProvider);
    return AuthController(authRepository: authRepository);
  },
);

class AuthController {
  final AuthRepository authRepository;

  AuthController({
    required this.authRepository,
  });
  void signInWithPhone(BuildContext context, String phoneNumber) {
    authRepository.signInWithPhone(context, phoneNumber);
  }
}
