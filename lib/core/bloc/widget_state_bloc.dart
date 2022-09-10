import 'package:copa_example/ui/screens/data_form_screen.dart';
import 'package:copa_example/ui/widgets/confirm_number_widget.dart';
import 'package:copa_example/ui/widgets/verification_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class WidgetStateEvent {}

class VerificationNumberEvent extends WidgetStateEvent {}
class ConfirmNumberEvent extends WidgetStateEvent {}

class WidgetBloc extends Bloc<WidgetStateEvent, Widget> {
  WidgetBloc() : super(VerificationNumberWidget()) {
    on<VerificationNumberEvent>((event, emit) => emit(ConfirmNumberWidget()));
    on<ConfirmNumberEvent>((event, emit) => emit(DataFormScreen()));
  }
}