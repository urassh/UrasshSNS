class SignupAuthException implements Exception {
  final String message;

  SignupAuthException(this.message);

  @override
  String toString() {
    return message;
  }
}