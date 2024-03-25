class NotFoundedDataException implements Exception {
  final String message;

  NotFoundedDataException(this.message);

  @override
  String toString() {
    return message;
  }
}