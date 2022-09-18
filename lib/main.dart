import 'package:copa_example/router/app_pages.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form_screen/data_form_screen.dart';
import 'package:copa_example/ui/screens/login_screen/login_screen.dart';
import 'package:copa_example/ui/screens/main_menu_screen/main_menu_screen.dart';
import 'package:copa_example/ui/screens/splash_screen/splash_screen.dart';
import 'package:copa_example/ui/screens/verification_number_screen/verification_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Copa Example',
     
      home: const DataFormScreen(),
      // VerificationNumberScreen
      // MainMenuScreen
      // DataFormScreen
      // SplashScreen
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routeswer,

    );
  }
}
