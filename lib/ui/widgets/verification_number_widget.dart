import 'package:copa_example/core/bloc/widget_state_bloc.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form_screen.dart';
import 'package:copa_example/ui/screens/login_screen.dart';

import 'package:copa_example/ui/widgets/custom_text_form_field.dart';
import 'package:copa_example/view/main/bottom_notifier.dart';
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
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: CustomTextFormField(
                controller: _phoneController,
                labelText: 'Номер телефону',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Будь ласка, введіть номер";
                  }
                  return null;
                },
              ),
            ),
            // SizedBox(height: 41.0),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(283, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    side: BorderSide(color: AppColors.appMainColor),
                  ),
                ),
                onPressed: () {
                  _bloc.add(VerificationNumberEvent());
                  // if (_verificationNumberWidgetKey.currentState!.validate()) {
                  //   Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const DataFormScreen()));
                  // }
                },
                child: Text(
                  'Верифікувати',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
