import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/card_widget/card_widget.dart';
import 'package:copa_example/ui/widgets/main_menu_widgets/edit_add_button_widget.dart';
import 'package:copa_example/ui/widgets/main_menu_widgets/favorite_announcement_widget.dart';
import 'package:copa_example/ui/widgets/main_menu_widgets/main_menu_widget.dart';
import 'package:copa_example/ui/widgets/main_menu_widgets/product_announcement_widget.dart';
import 'package:copa_example/ui/widgets/main_menu_widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainMenuWidget(),
    ProductAnnouncementWidget(),
    EditAddButtonWidget(),
    FavoriteAnnouncementWidget(),
    ProfileWidget(),
  ];
  onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
         backgroundColor: AppColors.bottomNavBarColor,
        onTap: onSelectTab,
        selectedItemColor: AppColors.appMainColor,
        unselectedItemColor: AppColors.bottomNavBarButtonColor,
        items: [
          const BottomNavigationBarItem(
            
            icon: Icon(
              
              Icons.grid_view_sharp,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
            
              AppImages.iconSneaker,
              color: _selectedTab == 1
                  ? AppColors.appMainColor
                  : AppColors.bottomNavBarButtonColor,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
           
              Icons.add,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
             
              Icons.favorite,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
           
              Icons.settings,
            ),
            label: '',
          ),
        ],
      ),
      body: Container(
        
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.backgroundMainImg,
              ),
              fit: BoxFit.fill),
        ),
        child: Center(
        child: _widgetOptions[_selectedTab],
        ),
      ),
    );
  }
}
