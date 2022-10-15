import 'dart:async';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/splash/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/data/ui/widgets/base_stateful_widget.dart';

class SplashScreen extends BaseStatefulWidget {
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
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed('/login_screen');
    });
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<SplashProvider>().init(context);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Provider<SplashProvider>(
        create: (_) => SplashProvider(),
        builder: (context, child) {
          return Scaffold(
              backgroundColor: AppColors.backgroudColor,
              body: Center(
                child: Image.asset(
                  AppImages.sneakerImg,
                ),
              ));
        });
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: AppColors.backgroudColor,
  //     body: Center(
  //       child: Image.asset(
  //         AppImages.sneakerImg,
  //       ),
  //     ),
  //   );
  // }
}



    
//   );
// }