import 'package:copa_example/core/bloc/widget_state_bloc.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/custom_text_form_feild/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmNumberWidget extends StatefulWidget {
  const ConfirmNumberWidget({Key? key}) : super(key: key);

  @override
  State<ConfirmNumberWidget> createState() => _ConfirmNumberWidgetState();
}

class _ConfirmNumberWidgetState extends State<ConfirmNumberWidget> {


  @override
  Widget build(BuildContext context) {
    final _confirmNumberWidgetKey = GlobalKey<FormState>();
    WidgetBloc _bloc = BlocProvider.of<WidgetBloc>(context);
    return Container(
      child: Column(
        children: [
          Form(
            key: _confirmNumberWidgetKey,
            child: CustomTextFormField(
              keyboardType: TextInputType.number,
              labelText: 'Код',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Будь ласка, введіть код";
                }
                return null;
              },
            ),
          ),
          // SizedBox(height: 41.0),

          /// Button
          ///
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 30,
            ),
            child: GestureDetector(
              onTap: () {
                if (_confirmNumberWidgetKey.currentState!.validate()) {
                  Navigator.of(context).pushNamed('/data_form_screen');
                }
              },
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.appMainColor),
                child: Center(
                  child: Text(
                    'Далі ',
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
          //   padding: const EdgeInsets.only(top: 20.0),
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       primary: AppColors.appMainColor,
          //       minimumSize: Size(283, 48),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(30)),

          //       ),
          //     ),
          //     onPressed: () {if (_confirmNumberWidgetKey.currentState!.validate()) {
          //        Navigator.of(context).pushNamed('/data_form_screen');
          //     }},

          //     child: Text(
          //       'Далі',
          //       style: TextStyle(fontSize: 16),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
