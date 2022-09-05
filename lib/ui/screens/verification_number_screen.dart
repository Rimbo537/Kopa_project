import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/verification_number_widget.dart';
import 'package:flutter/material.dart';

class VerificationNumberScreen extends StatefulWidget {
  const VerificationNumberScreen({Key? key}) : super(key: key);

  @override
  State<VerificationNumberScreen> createState() =>
      _VerificationNumberScreenState();
}

class _VerificationNumberScreenState extends State<VerificationNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const SizedBox(height: 104),
          Container(
            child: Image.asset(
              AppImages.sneakerImg,
            ),
          ),
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
          ),SizedBox(height: 32),
          // VerificationNumberWidget or ConfirmNumberWidget
          Container(
            child: VerificationNumberWidget(),
          ),
        ],
      ),
    );
  }
}
