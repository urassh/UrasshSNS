extension ListExtension<T> on List<T> {
  List<T> minus(int index) {
    final result = List<T>.from(this);
    result.removeAt(index);
    return result;
  }
}
