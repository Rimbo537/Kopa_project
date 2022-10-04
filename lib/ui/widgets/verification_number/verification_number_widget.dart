import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/custom_text_form_feild/custom_text_form_field.dart';
import 'package:copa_example/ui/widgets/main_button/main_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationNumberWidget extends StatefulWidget {
  VerificationNumberWidget({Key? key, required this.phoneNumberController})
      : super(key: key);
  TextEditingController phoneNumberController;

  @override
  State<VerificationNumberWidget> createState() =>
      _VerificationNumberWidgetState();
}

class _VerificationNumberWidgetState extends State<VerificationNumberWidget> {
  CountryCode _countryCode = CountryCode(code: 'UA', dialCode: '+380');
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
              prefixIcon: CountryCodePicker(
                textStyle: const TextStyle(color: Colors.white),
                onChanged: (CountryCode countryCode) {
                  setState(
                    () {
                      _countryCode = countryCode;
                    },
                  );
                },
                initialSelection: 'UA',
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
              ),
              labelText: 'Номер телефону',
              validator: (value) {
                if (value == null || value.isEmpty) {
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
              child: ElevatedButton(
                onPressed: () {
                  if (_phoneNumberFormKey.currentState!.validate()) {
                    _sendOtp(
                        phoneNumber: widget.phoneNumberController.text,
                        context: context);
                    // _bloc.add(
                    //   VerificationNumberEvent(),
                    // );
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: const BorderSide(color: AppColors.appMainColor),
                    ),
                  ),
                ),
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
              // child: GestureDetector(
              //   onTap: () {
              //     if (_phoneNumberFormKey.currentState!.validate()) {
              //       _sendOtp(
              //           phoneNumber: widget.phoneNumberController.text,
              //           context: context);
              //       // _bloc.add(
              //       //   VerificationNumberEvent(),
              //       // );
              //     }
              //   },
              //   child: Container(
              //     height: 48,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(30),
              //         color: AppColors.appMainColor),
              //     child: const Center(
              //       child: Text(
              //         'Верифікувати ',
              //         style: TextStyle(
              //           color: AppColors.white,
              //           fontSize: 16,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendOtp({required String phoneNumber, required BuildContext context}) {
    final phoneNumberWithCode = "${_countryCode.dialCode}$phoneNumber";
    context.read<PhoneAuthBloc>().add(
          SendOtpToPhoneEvent(
            phoneNumber: phoneNumberWithCode,
          ),
        );
    setState(() {
      widget.phoneNumberController.clear();
    });
  }
}
