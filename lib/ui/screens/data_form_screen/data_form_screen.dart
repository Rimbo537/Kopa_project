import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copa_example/data/repositories/auth/auth_repository_impl.dart';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/src/domain/models/user_model.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/custom_text_form_feild/custom_text_form_field.dart';

import 'package:flutter/material.dart';

class DataFormScreen extends StatefulWidget {
  const DataFormScreen({Key? key}) : super(key: key);

  @override
  State<DataFormScreen> createState() => _DataFormScreenState();
}

class _DataFormScreenState extends State<DataFormScreen> {
  final controllerName = TextEditingController();
  final controllerLastName = TextEditingController();
  final controllerSity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 65.0, bottom: 40.0),
            child: Container(
              child: Stack(
                fit: StackFit.loose,
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset(AppImages.ellipseImg),
                  const Text(
                    'Вхід',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 28.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomTextFormField(
            controller: controllerName,
            labelText: 'Ім`я',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Поле не повинне бути порожнім або містити цифри";
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          CustomTextFormField(
            controller: controllerLastName,
            labelText: 'Прізвище',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Поле не повинне бути порожнім або містити цифри";
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          CustomTextFormField(
            controller: controllerSity,
            labelText: 'Місто',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Поле не повинне бути порожнім або містити цифри";
              }
              return null;
            },
          ),
          SizedBox(height: 100.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColors.appMainColor,
              minimumSize: Size(283, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/main_menu_screen');

              final user = UserModel(
                firstName: controllerName.text,
                lastName: controllerLastName.text,
                sity: controllerSity.text,
              );
              AuthRepositoryImpl().createUser(user);
              //createUser(user);
            },
            child: Text(
              'Готово',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

}


