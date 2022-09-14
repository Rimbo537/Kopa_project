import 'package:flutter/material.dart';

class RegisterButtonWidget extends StatelessWidget {
  final String imageButton;
  final Color colorButton;
  final routePath;
 

   const RegisterButtonWidget(
      {Key? key,required this.imageButton, required this.colorButton, this.routePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

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
      onPressed: () => Navigator.of(context).pushNamed(routePath),
    );
    
  }
  
}

// routePath(route) {
//   Navigator.of(context).pushNamed(route);
// }