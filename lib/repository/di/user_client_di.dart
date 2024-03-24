import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/auth/Auth.dart';
import 'package:urassh_sns/client/auth/FirebaseUserAuth.dart';
import 'package:urassh_sns/client/database/FirestoreUserDatabase.dart';
import 'package:urassh_sns/client/database/database.dart';

final userClientDIProvider = Provider((ref) => UseClientDI(
  loginUserDatabase: ref.read(firestoreUserDatabaseProvider),
  loginUserAuth: ref.read(firebaseUserAuthProvider),
));

class UseClientDI {
  final Database loginUserDatabase;
  final Auth loginUserAuth;

  UseClientDI({
    required this.loginUserDatabase,
    required this.loginUserAuth,
  });

  Database provideUserDatabase() {
    return loginUserDatabase;
  }

  Auth provideUserAuth() {
    return loginUserAuth;
  }
}
