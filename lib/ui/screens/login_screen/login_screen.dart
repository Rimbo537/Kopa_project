import 'package:copa_example/resources/app_images.dart';

import 'package:copa_example/theme/app_colors.dart';

import 'package:copa_example/ui/widgets/register_button_widget/register_button_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.backgroudColor,
      body: Column(
        children: [
          const SizedBox(height: 104),
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
                const Text(
                  'Вхід',
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
              children: const [
                Expanded(
                  flex: 1,
                  child: RegisterButtonWidget(
                    imageButton: AppImages.phoneImg,
                    colorButton: AppColors.buttonPhoneColor,
                    routePath: 'verification_number_screen',
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RegisterButtonWidget(
                    imageButton: AppImages.facebookImg,
                    colorButton: AppColors.buttonFacebookColor,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RegisterButtonWidget(
                    imageButton: AppImages.googleImg,
                    colorButton: AppColors.buttonGoogleColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}