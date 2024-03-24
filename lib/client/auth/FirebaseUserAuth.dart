import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/auth/Auth.dart';

final firebaseUserAuthProvider = Provider((ref) => FirebaseUserAuth());

class FirebaseUserAuth implements Auth {
  @override
  Future<void> login(Map<String, dynamic> loginData) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(Map<String, dynamic> registerData) async {

  }
}
