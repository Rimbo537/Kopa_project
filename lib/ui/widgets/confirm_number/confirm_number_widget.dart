import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/data/repositories/auth/auth_repository_impl.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/custom_text_form_feild/custom_text_form_field.dart';
import 'package:copa_example/ui/widgets/main_button/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmNumberWidget extends StatelessWidget {
  ConfirmNumberWidget(
      {Key? key, required this.codeController, required this.verificationId})
      : super(key: key);

  final TextEditingController codeController;
  final String verificationId;
  final GlobalKey<FormState> _otpFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _otpFormKey,
      child: Container(
        child: Column(
          children: [
            CustomTextFormField(
              controller: codeController,
              keyboardType: TextInputType.number,
              labelText: 'Код',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Будь ласка, введіть код";
                }
                return null;
              },
            ),
            MainButton(
              textButton: 'aaa',
              onTap: {
                if (_otpFormKey.currentState!.validate())
                  {
                    _verifyOtp(context: context)
                    // Navigator.of(context).pushNamed('/data_form_screen');
                  },
              },
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     left: 30,
            //     right: 30,
            //     top: 30,
            //   ),
            //   child: GestureDetector(
            //     onTap: () {onTap
            //       if (_otpFormKey.currentState!.validate()) {
            //         _verifyOtp(context: context);
            //         // Navigator.of(context).pushNamed('/data_form_screen');
            //       }
            //     },
            //     child: Container(
            //       height: 48,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(30),
            //           color: AppColors.appMainColor),
            //       child: const Center(
            //         child: Text(
            //           'Далі ',
            //           style: TextStyle(
            //             color: AppColors.white,
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void _verifyOtp({required BuildContext context}) {
    context.read<PhoneAuthBloc>().add(VerifySentOtpEvent(
        otpCode: codeController.text, verificationId: verificationId));
    codeController.clear();
  }
}
