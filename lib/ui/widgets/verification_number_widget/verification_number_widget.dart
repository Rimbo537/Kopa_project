import 'package:copa_example/core/bloc/widget_state_bloc.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form_screen/data_form_screen.dart';
import 'package:copa_example/ui/widgets/custom_text_form_feild/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationNumberWidget extends StatefulWidget {
  const VerificationNumberWidget({Key? key}) : super(key: key);

  @override
  State<VerificationNumberWidget> createState() =>
      _VerificationNumberWidgetState();
}

class _VerificationNumberWidgetState extends State<VerificationNumberWidget> {
  final _phoneController = TextEditingController(text: '+380');

  @override
  Widget build(BuildContext context) {
    final _verificationNumberWidgetKey = GlobalKey<FormState>();
    WidgetBloc _bloc = BlocProvider.of<WidgetBloc>(context);
    return Container(
      child: Form(
        key: _verificationNumberWidgetKey,
        child: Column(
          children: [
            CustomTextFormField(
              controller: _phoneController,
              labelText: 'Номер телефону',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Будь ласка, введіть номер";
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
                  if (_verificationNumberWidgetKey.currentState!.validate()) {
                    _bloc.add(
                      VerificationNumberEvent(),
                    );
                  }
                },
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.appMainColor),
                  child: Center(
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

            ///Button

            // Padding(
            //   padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       side: BorderSide(),
            //       primary: AppColors.appMainColor,
            //       //minimumSize: Size(283, 48),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(30)),
            //       ),
            //     ),
            //     onPressed: () {
            //       if (_verificationNumberWidgetKey.currentState!.validate())
            //         {_bloc.add(VerificationNumberEvent(),);}
            //     },
            //     child: Text(
            //       'Верифікувати',
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
