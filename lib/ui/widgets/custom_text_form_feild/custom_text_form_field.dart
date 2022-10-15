import 'package:copa_example/core/data/ui/widgets/base_stateless_widget.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends BaseStatelessWidget {
  final void Function(String)? onChanged;
  final String? labelText;
  final String? Function(String?)? validator;
  final controller;
  final keyboardType;
  final prefixIcon;

  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.validator,
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        autovalidateMode: AutovalidateMode.disabled,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        onChanged: onChanged,
        cursorColor: AppColors.white,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(color: Colors.white, width: 2),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
