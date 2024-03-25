import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/auth/Auth.dart';
import 'package:urassh_sns/client/auth/firebase_user_auth.dart';
import 'package:urassh_sns/client/database/database.dart';
import 'package:urassh_sns/client/database/firestore_socialuser_database.dart';

final clientDIProvider = Provider((ref) => ClientDI(
  socialUserDatabase: ref.read(firestoreSocialUserDatabaseProvider),
  loginUserAuth: ref.read(firebaseUserAuthProvider),
));

class ClientDI {
  final Database socialUserDatabase;
  final Auth loginUserAuth;

  ClientDI({
    required this.socialUserDatabase,
    required this.loginUserAuth,
  });

  Database provideSocialUserDatabase() {
    return socialUserDatabase;
  }

  Auth provideUserAuth() {
    return loginUserAuth;
  }
}
