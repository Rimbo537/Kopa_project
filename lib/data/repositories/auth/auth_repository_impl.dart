import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/data/repositories/auth/auth_repository.dart';
import 'package:copa_example/src/domain/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl extends AuthRepository {
     
  @override
  Future<void> createUser(UserModel user) async {
    final userPhone = FirebaseAuth.instance.currentUser;
    /// Reference to document
    final docUser = FirebaseFirestore.instance.collection('users').doc(userPhone?.uid);
    user.id = docUser.id;

    final json = user.toJson();

    /// Create document and write data to Firebase
    await docUser.set(json);
  }
}

// /  @override
//   Stream<UserModel> readUser() => FirebaseFirestore.instance
//       .collection('users')
//       .snapshots()
//       .map((snapshot) => snapshot.docs.map((doc) => UserModel.fromJson(doc.data())).toList());
// }
