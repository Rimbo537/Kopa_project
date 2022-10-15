import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copa_example/data/repositories/auth/auth_repository.dart';
import 'package:copa_example/src/domain/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepositoryImpl extends AuthRepository {
    final _firebaseAuth = FirebaseAuth.instance;
  @override
  Future<void> createUser(UserModel user) async {
    final userPhone = FirebaseAuth.instance.currentUser!;

    /// Reference to document
    final docUser =
        FirebaseFirestore.instance.collection('users').doc(userPhone.uid);
    user.id = docUser.id;

    final json = user.toJson();

    /// Create document and write data to Firebase
    await docUser.set(json);
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      throw Exception(e.toString());
    }
}


  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
}


}
