import 'dart:async';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //  void _updateProgress() {
  //   const oneSec = const Duration(seconds: 1);
  //   Timer.periodic(oneSec, (Timer t) {
  //     setState(() {
  //       _progressValue += 0.2;

  //       if (_progressValue.toStringAsFixed(1) == '1.0') {
  //         _loading = false;
  //         t.cancel();
  //         _progressValue = 0.0;
  //         return;
  //       }
  //     });
  //   });
  // }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed('/login_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroudColor,
      child: Image.asset(
        AppImages.sneakerImg,
      ),
      width: 373,
      height: 436,
    );
  }
}
