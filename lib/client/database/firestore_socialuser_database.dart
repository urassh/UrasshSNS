import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:urassh_sns/client/database/database.dart';
import 'package:urassh_sns/exception/insert_database_exception.dart';

final firestoreSocialUserDatabaseProvider = Provider((ref) => FirestoreSocialUserDatabase());

class FirestoreSocialUserDatabase implements Database {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static const String COLLECTION_PATH = 'social_users';

  @override
  Future<void> delete(Map<String, dynamic> data) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> insert(Map<String, dynamic> data) async {
    try {
      await _firestore.collection(COLLECTION_PATH).doc(data['uid']).set(data);
    } on FirebaseException catch(e) {
      InsertDatabaseException(e.toString());
    }
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

  @override
  Future<Map<String, dynamic>> get(String id) async {
    QuerySnapshot<Map<String, dynamic>> query = await _firestore
        .collection(COLLECTION_PATH)
        .where("uid", isEqualTo: id)
        .get();

    if(query.docs.isEmpty) {
      return {};
    }

    return query.docs[0].data();
  }
}