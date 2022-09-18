import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copa_example/data/repositories/auth/auth_repository.dart';
import 'package:copa_example/src/domain/models/user_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> createUser(UserModel user) async {
    /// Reference to document
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    user.id = docUser.id;

    final json = user.toJson();

    /// Create document and write data to Firebase
    await docUser.set(json);
  }

}