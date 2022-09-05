import 'package:flutter/material.dart';

class RegisterButtonWidget extends StatelessWidget {
  final String imageButton;
  final Color colorButton;
 

   const RegisterButtonWidget(
      {Key? key,required this.imageButton, required this.colorButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var condition;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(65.0, 65.0),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: colorButton,
      ),
      child: Container(
        width: 65,
        height: 65,
        child: Image.asset(imageButton),
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
      ),
      onPressed: () => {},
    );
  }
}
