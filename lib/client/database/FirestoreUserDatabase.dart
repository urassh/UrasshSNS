import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/database/database.dart';

final firestoreUserDatabaseProvider = Provider((ref) => FirestoreUserDatabase());

class FirestoreUserDatabase implements Database {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static const String COLLECTION_PATH = 'users';

  @override
  Future<void> delete(Map<String, dynamic> data) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> insert(Map<String, dynamic> data) async {
    _firestore.collection(COLLECTION_PATH).doc(data['uid']).set(data);
  }

  @override
  Future<List<Map<String, dynamic>>> query() {
    // TODO: implement query
    throw UnimplementedError();
  }

  @override
  Future<void> update(Map<String, dynamic> data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}