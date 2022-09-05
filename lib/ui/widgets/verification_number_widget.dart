import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationNumberWidget extends StatefulWidget {
  const VerificationNumberWidget({Key? key}) : super(key: key);

  @override
  State<VerificationNumberWidget> createState() =>
      _VerificationNumberWidgetState();
}

class _VerificationNumberWidgetState extends State<VerificationNumberWidget> {
  @override
  Widget build(BuildContext context) {
    const textFieldDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //errorText: 'Номер введено невірно',
      
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.white, width: 1.0)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(
            color: AppColors.appMainColor, width: 1.0),
      ),
    );
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 283,
            height: 34,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: textFieldDecoration,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(height: 41.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(283, 34),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                side:
                    BorderSide(color: AppColors.appMainColor),
              ),
            ),
            onPressed: () {},
            child: Text('Верифікувати'),
          ),
        ],
      ),
    );
  }
}
