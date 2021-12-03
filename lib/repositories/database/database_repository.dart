import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating/models/user_model.dart';
import 'package:dating/repositories/database/base_database_repository.dart';
import 'package:dating/repositories/storage/base_storage_repository.dart';
import 'package:dating/repositories/storage/storage_repository.dart';

class DataBaseRepository extends BaseDatabaseRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Stream<User> getUser() {
    return _firebaseFirestore
        .collection('users')
        .doc('48KyKHoBvYLlKdZLtRg2')
        .snapshots()
        .map((snap) => User.fromSnapshot(snap));
  }

  @override
  Future<void> updateUserPictures(String imageName) async {
    String downloadUrl = await StorageRepository().getDownloadUrl(imageName);
    return _firebaseFirestore
        .collection('users')
        .doc('48KyKHoBvYLlKdZLtRg2')
        .update(
      {
        'imageUrls': FieldValue.arrayUnion([downloadUrl])
      },
    );
  }
}
