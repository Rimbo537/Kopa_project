import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:copa_example/ui/widgets/card/card_widget.dart';
import 'package:copa_example/ui/widgets/main_menu/main_menu/filter_widget.dart';
import 'package:flutter/material.dart';

class MainMenuWidget extends BaseStatefulWidget {
  const MainMenuWidget({Key? key}) : super(key: key);

  @override
  State<MainMenuWidget> createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
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