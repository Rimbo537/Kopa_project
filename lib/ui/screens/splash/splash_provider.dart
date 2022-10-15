import 'dart:async';
import 'package:copa_example/core/data/providers/base_provider.dart';
import 'package:copa_example/enums/states/notifier_state.dart';
import 'package:copa_example/ui/screens/login/login_screen.dart';
import 'package:copa_example/ui/screens/main_menu/main_menu_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashProvider extends BaseProvider {
  final auth = FirebaseAuth.instance;

  Future init(BuildContext context) async {
    setNotifier(NotifierState.loading);
    Timer(
        const Duration(seconds: 1),
        () => auth.currentUser == null
            ? Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()))
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainMenuScreen())));
  }
}
