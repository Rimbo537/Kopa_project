import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: AppColors.cardColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Image.asset(
                  AppImages.sneakerCardImg,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 170, top: 1),
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 135, top: 10),
                child: Text(
                  ' Nike 992K',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140, top: 30),
                child: Text(
                  'Розміри стопи: ',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140, top: 45),
                child: Text(
                  '40',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 180, top: 50),
                child: Text(
                  '28.5',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 165, top: 70),
                child: Text(
                  'Довжина / см',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 250, top: 50),
                child: Text(
                  '10',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 235, top: 70),
                child: Text(
                  'Ширина / см',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 145, top: 70),
                child: Text(
                  'EU',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 140, top: 90),
                child: Text(
                  'Матеріал: Шкіра',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
