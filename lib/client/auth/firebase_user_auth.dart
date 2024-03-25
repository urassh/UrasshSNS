import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/auth/Auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:urassh_sns/exception/signup_auth_exception.dart';

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
  Future<String> register(Map<String, dynamic> registerData) async {
    try {
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: registerData['email'],
          password: registerData['password']);
      return result.user!.uid;
    } on FirebaseAuthException catch(e) {
      throw SignupAuthException(e.toString());
    }
  }

  @override
  String? getCurrentUserID() {
    if (FirebaseAuth.instance.currentUser == null) {
      return null;
    }

    return  FirebaseAuth.instance.currentUser!.uid;
  }
}
