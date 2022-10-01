import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/data/repositories/phone_auth/phone_auth_repository.dart';
import 'package:copa_example/router/app_pages.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form/data_form_screen.dart';
import 'package:copa_example/ui/screens/main_menu/main_menu_screen.dart';
import 'package:copa_example/ui/screens/splash/splash_screen.dart';
import 'package:copa_example/ui/screens/verification_number/verification_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Copa Example',
        home:  SplashScreen(),

        // VerificationNumberScreen
        // MainMenuScreen
        // DataFormScreen
        // SplashScreen
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routeswer);
  }
}

// RepositoryProvider(
//         create: (context) => PhoneAuthRepository(),
//         child: BlocProvider(
//           create: (context) => PhoneAuthBloc(
//             phoneAuthRepository:
//                 RepositoryProvider.of<PhoneAuthRepository>(context),
//           ),
//           child: