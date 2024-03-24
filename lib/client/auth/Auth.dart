abstract class Auth {
  Future<void> login(Map<String, dynamic> loginData);
  Future<void> logout();
  Future<void> register(Map<String, dynamic> registerData);
}