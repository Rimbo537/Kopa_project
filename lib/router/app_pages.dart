import 'package:copa_example/router/route_paths.dart';
import 'package:copa_example/ui/screens/data_form_screen.dart';
import 'package:copa_example/ui/screens/login_screen.dart';
import 'package:copa_example/ui/screens/splash_screen.dart';
import 'package:copa_example/ui/screens/verification_number_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static const String INITIAL = rootRoute;
  static final routes = [
    GetPage(
      name: rootRoute,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: loginScreenRoute,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: verificationNumberScreenRoute,
      page: () => VerificationNumberScreen(),
    ),
    GetPage(
      name: dataFormScreen,
      page: () => DataFormScreen(),
    ),
  ];
}
