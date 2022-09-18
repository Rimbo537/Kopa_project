import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Image.asset(
                AppImages.profileImg,
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
          ),
          Text(
            'Angela Mayer',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ]),
       
              // Expanded(
              //   flex: 2,
              //   child: Padding(
              //     padding: const EdgeInsets.all(16.0),
              //     child: Container(
              //       alignment: Alignment.bottomRight,
              //       color: AppColors.appMainColor,
              //       decoration: const BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: AppColors.appMainColor,
              //       ),
              //     ),
              //   ),
              // ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: TextField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: AppColors.white,
            ),
            decoration: InputDecoration(
              labelText: 'Контактний номер',
              labelStyle: TextStyle(
                color: AppColors.white,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.appMainColor),
              ),
            ),
            strutStyle: StrutStyle(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child:  TextField(
            cursorColor: Colors.white,
            style: TextStyle(
              color: AppColors.white,
            ),
            decoration: InputDecoration(
              labelText: 'Місто',
              labelStyle: TextStyle(
                color: AppColors.white,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.appMainColor),
              ),
            ),
            strutStyle: StrutStyle(),
          ),
        ),

        /// Button
        ///
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 30,
            bottom: 30,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.appMainColor),
              child: const Center(
                child: Text(
                  'Верифікувати ',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),

        /// Button
      ],
    );
  }
}
