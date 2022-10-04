import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class RegisterButtonWidget extends StatelessWidget {
  final String imageButton;
  final Color colorButton;
  final VoidCallback onPressed;
  // final routePath;

  const RegisterButtonWidget({
    Key? key,
    required this.imageButton,
    required this.colorButton,
    required this.onPressed,
    // this.routePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(65.0, 65.0),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: colorButton,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 65, minWidth: 65),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: colorButton,
                blurRadius: 20,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Image.asset(imageButton),
        ),
      ),
      //Get.toNamed(routePath),
      // Navigator.of(context).pushNamed(routePath))
      // '/verification_number_screen'
      onPressed: onPressed,
      // _authenticateWithGoogle(context);
      // Navigator.of(context).pushNamed('/verification_number_screen');
      // Get.toNamed('/verification_number_screen');
    );
  }
}