abstract class Auth {
  Future<void> login(Map<String, dynamic> loginData);
  Future<void> logout();
  Future<String> register(Map<String, dynamic> registerData);
  String? getCurrentUserID();
}