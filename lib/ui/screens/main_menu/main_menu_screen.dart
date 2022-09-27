import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copa_example/resources/app_icons.dart';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/src/domain/models/user_model.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/main_menu/bottom_notifier.dart';
import 'package:copa_example/ui/widgets/main_menu/edit_add/edit_add_button_widget.dart';
import 'package:copa_example/ui/widgets/main_menu/favorite/favorite_announcement_widget.dart';
import 'package:copa_example/ui/widgets/main_menu/main_menu/main_menu_widget.dart';
import 'package:copa_example/ui/widgets/main_menu/product/product_announcement_widget.dart';
import 'package:copa_example/ui/widgets/main_menu/profile/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    MainMenuWidget(),
    ProductAnnouncementWidget(),
    EditAddButtonWidget(),
    FavoriteAnnouncementWidget(),
    ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNotifier>(
      create: (_) => BottomNotifier(),
      builder: (context, child) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.backgroudColor,
            image: DecorationImage(
                image: AssetImage(
                  AppImages.backgroundMainImg,
                ),
                fit: BoxFit.fill),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: BottomNavigationBar(
              selectedFontSize: 20,
              iconSize: 24,
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.bottomNavBarColor,
              onTap: (int index) {
                Provider.of<BottomNotifier>(context, listen: false).childIndex =
                    index;
              },
              selectedItemColor: AppColors.appMainColor,
              unselectedItemColor: AppColors.bottomNavBarButtonColor,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.mainIcon,
                    color: Provider.of<BottomNotifier>(context).childIndex == 0
                        ? AppColors.appMainColor
                        : AppColors.bottomNavBarButtonColor,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.sneakerIcon,
                    color: Provider.of<BottomNotifier>(context).childIndex == 1
                        ? AppColors.appMainColor
                        : AppColors.bottomNavBarButtonColor,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.appMainColor,
                      ),
                      child: SvgPicture.asset(
                        AppIcons.addIcon,
                      ),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.favoriteIcon,
                    color: Provider.of<BottomNotifier>(context).childIndex == 3
                        ? AppColors.appMainColor
                        : AppColors.bottomNavBarButtonColor,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.profileIcon,
                    color: Provider.of<BottomNotifier>(context).childIndex == 4
                        ? AppColors.appMainColor
                        : AppColors.bottomNavBarButtonColor,
                  ),
                  label: '',
                ),
              ],
            ),
            body: Container(
              alignment: Alignment.center,
              
              child: Center(
                child: _widgetOptions[
                    Provider.of<BottomNotifier>(context).childIndex],
              ),
            ),
          ),
        );
      },
    );
  }
}
