import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/core/bloc/widget_state_bloc.dart';
import 'package:copa_example/core/data/services/firebase_auth/auth_phone.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/custom_text_form_feild/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationNumberWidget extends StatefulWidget {
   const VerificationNumberWidget(
      {Key? key,  required this.phoneNumberController})
      : super(key: key);
  final TextEditingController phoneNumberController;

  @override
  State<VerificationNumberWidget> createState() =>
      _VerificationNumberWidgetState();
}

class _VerificationNumberWidgetState extends State<VerificationNumberWidget> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();
  
    return Form(
      key: _phoneNumberFormKey,
      child: Container(
        child: Column(
          children: [
            CustomTextFormField(
              controller: widget.phoneNumberController,
              labelText: 'Номер телефону',
              validator: (value) {
                if (value!.length != 10 || value.isEmpty) {
                  return "Будь ласка, введіть вірний номер";
                }
                return null;
              },
            ),
            // SizedBox(height: 41.0),

            ///Button
            ///
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 30,
                bottom: 30,
              ),
              child: GestureDetector(
                onTap: () {
                  if (_phoneNumberFormKey.currentState!.validate()) {
                    _sendOtp(
                        phoneNumber: widget.phoneNumberController.text,
                        context: context);
                    // _bloc.add(
                    //   VerificationNumberEvent(),
                    // );
                  }
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.appMainColor),
                  child:const Center(
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
          ],
        ),
      ),
    );
  }

  void _sendOtp({required String phoneNumber, required BuildContext context}) {
    setState(() {
      widget.phoneNumberController.clear();
    });
  }
}
