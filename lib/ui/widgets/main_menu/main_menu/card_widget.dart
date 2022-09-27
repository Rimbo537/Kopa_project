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
    return ListView.builder(
      itemCount: 10,
      itemExtent: 150,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                     const Image(
                        image: AssetImage(
                          AppImages.sneakerCardImg,
                        ),
                      ),
                     const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(),// name+price
                            Row(),//parameters
                            Text(''),//parameters: material
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
