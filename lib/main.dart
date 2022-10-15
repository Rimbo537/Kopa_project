import 'package:copa_example/core/bloc/google_auth/google_bloc.dart';
import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/data/repositories/auth/auth_repository_impl.dart';
import 'package:copa_example/data/repositories/phone_auth/phone_auth_repository.dart';
import 'package:copa_example/router/app_pages.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form/data_form_screen.dart';
import 'package:copa_example/ui/screens/login/login_screen.dart';
import 'package:copa_example/ui/screens/main_menu/main_menu_screen.dart';
import 'package:copa_example/ui/screens/splash/splash_screen.dart';
import 'package:copa_example/ui/screens/verification_number/verification_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';

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
    return RepositoryProvider(
      create: (BuildContext context) => AuthRepositoryImpl(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository:
                  RepositoryProvider.of<AuthRepositoryImpl>(context),
            ),
          ),
          BlocProvider(
            create: (context) => PhoneAuthBloc(
              phoneAuthRepository: PhoneAuthRepository(),
            ),
          ),
        ],
        child: GetMaterialApp(
          title: 'Copa Example',
          home: const SplashScreen(),
          // VerificationNumberScreen
          // MainMenuScreen
          // DataFormScreen
          // SplashScreen
          // LoginScreen
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routeswer,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return RepositoryProvider(
//       create: (BuildContext context) => AuthRepositoryImpl(),
//       child: BlocProvider(
//         create: (context) => AuthBloc(
//           authRepository:
//               RepositoryProvider.of<AuthRepositoryImpl>(context),
//         ),
//         child: GetMaterialApp(
//             title: 'Copa Example',
//             home: const SplashScreen(),
//             // VerificationNumberScreen
//             // MainMenuScreen
//             // DataFormScreen
//             // SplashScreen
//             // LoginScreen
//             initialRoute: AppPages.INITIAL,
//             getPages: AppPages.routeswer),
//       ),
//     );
//   }
// }

/////////////// PHONE AUTH /////////////////
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return RepositoryProvider(
//       create: (BuildContext context) => PhoneAuthRepository(),
//       child: BlocProvider(
//         create: (context) => PhoneAuthBloc(
//           phoneAuthRepository:
//               RepositoryProvider.of<PhoneAuthRepository>(context),
//         ),
//         child: GetMaterialApp(
//             title: 'Copa Example',
//             home: const LoginScreen(),
//             // VerificationNumberScreen
//             // MainMenuScreen
//             // DataFormScreen
//             // SplashScreen
//             initialRoute: AppPages.INITIAL,
//             getPages: AppPages.routeswer),
//       ),
//     );
//   }
// }