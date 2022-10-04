import 'package:copa_example/core/bloc/google_auth/google_bloc.dart';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form/data_form_screen.dart';
import 'package:copa_example/ui/screens/main_menu/main_menu_screen.dart';
import 'package:copa_example/ui/widgets/register_button/register_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  final String loginText = 'Вхід';
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: AppColors.backgroudColor,
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is Authenticated) {
                // Navigating to the dashboard screen if the user is authenticated
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainMenuScreen()));
              }
              if (state is AuthError) {
                // Showing the error message if the user has entered invalid credentials
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.error)));
              }
            },
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is Loading) {
                  // Showing the loading indicator while the user is signing in
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView(
                  children: [
                    const SizedBox(height: 70.0),
                    Container(
                      child: Image.asset(
                        AppImages.sneakerImg,
                      ),
                    ),
                    const SizedBox(height: 60),
                    Container(
                      child: Stack(
                        fit: StackFit.loose,
                        alignment: AlignmentDirectional.center,
                        children: [
                          Image.asset(AppImages.ellipseImg),
                          Text(
                            loginText,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 28.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 1,
                            child: RegisterButtonWidget(
                              imageButton: AppImages.phoneImg,
                              colorButton: AppColors.buttonPhoneColor,
                              onPressed: () =>
                                  Get.toNamed('/verification_number_screen'),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RegisterButtonWidget(
                              imageButton: AppImages.facebookImg,
                              colorButton: AppColors.buttonFacebookColor,
                              onPressed: () =>
                                  Get.toNamed('/verification_number_screen'),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RegisterButtonWidget(
                              imageButton: AppImages.googleImg,
                              colorButton: AppColors.buttonGoogleColor,
                              onPressed: () {
                                _authenticateWithGoogle(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      }
   


  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(
      GoogleSignInRequested(),
    );
  }
}

    // return Scaffold(
    //   backgroundColor: AppColors.backgroudColor,
    //   body: ListView(
    //     children: [
    //       const SizedBox(height: 70.0),
    //       Container(
    //         child: Image.asset(
    //           AppImages.sneakerImg,
    //         ),
    //       ),
    //       const SizedBox(height: 60),
    //       Container(
    //         child: Stack(
    //           fit: StackFit.loose,
    //           alignment: AlignmentDirectional.center,
    //           children: [
    //             Image.asset(AppImages.ellipseImg),
    //             Text(
    //               loginText,
    //               style: TextStyle(
    //                 color: AppColors.white,
    //                 fontSize: 28.0,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       const SizedBox(height: 40),
    //       Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 45),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Expanded(
    //               flex: 1,
    //               child: RegisterButtonWidget(
    //                 imageButton: AppImages.phoneImg,
    //                 colorButton: AppColors.buttonPhoneColor,
    //                 onPressed: () => Get.toNamed('/verification_number_screen'),
    //               ),
    //             ),
    //             Expanded(
    //               flex: 1,
    //               child: RegisterButtonWidget(
    //                 imageButton: AppImages.facebookImg,
    //                 colorButton: AppColors.buttonFacebookColor,
    //                 onPressed: () => Get.toNamed('/verification_number_screen'),
    //               ),
    //             ),
    //             Expanded(
    //               flex: 1,
    //               child: RegisterButtonWidget(
    //                 imageButton: AppImages.googleImg,
    //                 colorButton: AppColors.buttonGoogleColor,
    //                 onPressed: () {
    //                   _authenticateWithGoogle(context);
    //                 },
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
