import 'package:copa_example/core/bloc/widget_state_bloc.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form_screen.dart';
import 'package:copa_example/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ConfirmNumberWidget extends StatefulWidget {
  const ConfirmNumberWidget({Key? key}) : super(key: key);

  @override
  State<ConfirmNumberWidget> createState() => _ConfirmNumberWidgetState();
}

class _ConfirmNumberWidgetState extends State<ConfirmNumberWidget> {
 final _authController = TextEditingController(text: '00000');
 
//  _authPass() {
//     final authPassword = _authController.text;
//     if(authPassword == '00000') {
//       Navigator.of(context).pushNamed('/data_form_screen');
//     } else {
//       print('Error text');
//     }
//   }
 
  @override
  Widget build(BuildContext context) {
    final _confirmNumberWidgetKey = GlobalKey<FormState>();
    WidgetBloc _bloc = BlocProvider.of<WidgetBloc>(context);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 15, left: 25, right: 25),
          //   width: 283,
          //   height: 34,
            child: Form(
              key: _confirmNumberWidgetKey,
              child: CustomTextFormField(
                labelText: 'Код',
                validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Будь ласка, введіть код";
                      }
                      return null;
                    } ,
              ),
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
                  side:
                      BorderSide(color: AppColors.appMainColor),
                ),
              ),
              onPressed: () {
                  Navigator.of(context).pushNamed('/data_form_screen'); 
              },
              child: Text('Верифікувати'),
            ),
          ),
        ],
      ),
    );
  }
}