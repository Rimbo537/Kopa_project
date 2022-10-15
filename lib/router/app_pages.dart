import 'package:copa_example/router/route_paths.dart';
import 'package:copa_example/ui/screens/card_info/card_info_screen.dart';
import 'package:copa_example/ui/screens/create_product/create_product_creen.dart';
import 'package:copa_example/ui/screens/data_form/data_form_screen.dart';
import 'package:copa_example/ui/screens/login/login_screen.dart';
import 'package:copa_example/ui/screens/main_menu/main_menu_screen.dart';
import 'package:copa_example/ui/screens/splash/splash_screen.dart';
import 'package:copa_example/ui/screens/verification_number/verification_number_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static const String INITIAL = rootRoute;
  static final routeswer = [
    GetPage(
      name: rootRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: loginScreenRoute,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: verificationNumberScreenRoute,
      page: () => const VerificationNumberScreen(),
    ),
    GetPage(
      name: dataFormScreen,
      page: () => const DataFormScreen(),
    ),
     GetPage(
      name: mainMenuScreen,
      page: () => const MainMenuScreen(),
    ),
      GetPage(
      name: createProductScreen,
      page: () => const CreateProductScreen(),
    ),
         GetPage(
      name: cardInfoScreen,
      page: () => const CardInfoScreen(),
    ),

  ];
}
