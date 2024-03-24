abstract class Database {
  Future<List<Map<String, dynamic>>> query();
  Future<void> insert(Map<String, dynamic> data);
  Future<void> update(Map<String, dynamic> data);
  Future<void> delete(Map<String, dynamic> data);
}