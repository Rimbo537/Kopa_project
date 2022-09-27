

import 'package:copa_example/ui/utils/showSnackBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


  Future<void> verifyPhone(String phone, BuildContext context) async {
    String verificationId = "";
    FirebaseAuth auth = FirebaseAuth.instance;
    bool showCode = false;

    await auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential authCredential) {
        auth.signInWithCredential(authCredential);
      },
      verificationFailed: (e) {
        showSnackBar(context, e.message!);
      },
      codeSent: (String id, [int? resendToken]) {
        verificationId = id;
        showCode = true;
      },
      codeAutoRetrievalTimeout: (String id) {},
    );
  }
