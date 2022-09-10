import 'package:copa_example/ui/screens/data_form_screen.dart';
import 'package:copa_example/ui/screens/login_screen.dart';
import 'package:copa_example/ui/screens/splash_screen.dart';
import 'package:copa_example/ui/screens/verification_number_screen.dart';
import 'package:copa_example/ui/widgets/confirm_number_widget.dart';
import 'package:copa_example/ui/widgets/verification_number_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Copa Example',
      home: VerificationNumberScreen(),
      routes: {
        '/confirm_number_widget': (context) => ConfirmNumberWidget(),
        '/verification_number_widget': (context) => VerificationNumberWidget(),
        '/login_screen': (context) => LoginScreen(),
        '/data_form_screen': (context) => DataFormScreen(),
      },
      // initialRoute: '/login_screen',
    );
  }
}
