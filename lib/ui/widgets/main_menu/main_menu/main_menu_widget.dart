import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/main_menu/main_menu/card_widget.dart';
import 'package:copa_example/ui/widgets/main_menu/main_menu/card_widget.dart';
import 'package:copa_example/ui/widgets/main_menu/main_menu/filter_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({Key? key}) : super(key: key);

  @override
  State<MainMenuWidget> createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  List<String> _nameSneakers = ['Sneaker 1', 'Sneaker 2', 'Sneaker 3'];
  String? _selectedSneaker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const FilterWidget(),
       
      ),
      body: const CardWidget(),
    );
  }
}


//Padding(
        //   padding: EdgeInsets.all(16.0),
        //   child: Container(
        //     child: IconButton(onPressed: () {}, icon: Icon(Icons.filter)),
        //   ),
        // ),

        // Row(
        //  CircleAvatar(
        //     radius: 4.5,
        //     backgroundColor: AppColor.kPrimaryColor,
        //   ),
        //   Text
        // )