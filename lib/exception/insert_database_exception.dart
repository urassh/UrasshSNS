class InsertDatabaseException implements Exception {
  final String message;

  InsertDatabaseException(this.message);

  @override
  String toString() {
    return message;
  }
}