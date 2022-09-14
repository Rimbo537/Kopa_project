import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
           
            backgroundColor: AppColors.bottomNavBarColor,
            icon: Icon(
              Icons.grid_view_sharp,
              color: AppColors.bottomNavBarButtonColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            tooltip: '/data_form_screen',
            icon: Center(
              child: Image.asset(
                AppImages.iconSneaker,
                color: AppColors.bottomNavBarButtonColor,
              ),
            ),
            label: '/data_form_screen',
          ),
          const BottomNavigationBarItem(
            tooltip: '/data_form_screen',
            icon: Icon(
              Icons.add,
              color: AppColors.bottomNavBarButtonColor,
            ),
            label: '/data_form_screen',
          ),
          const BottomNavigationBarItem(
            tooltip: '/data_form_screen',
            icon: Icon(
              Icons.favorite,
              color: AppColors.bottomNavBarButtonColor,
            ),
            label: '/data_form_screen',
          ),
          const BottomNavigationBarItem(
            tooltip: '/data_form_screen',
            icon: Icon(
              Icons.settings,
              color: AppColors.bottomNavBarButtonColor,
            ),
            label: '/data_form_screen',
          ),
        ],
      ),
    );
  }
}
