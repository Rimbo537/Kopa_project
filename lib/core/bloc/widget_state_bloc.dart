
import 'package:copa_example/ui/widgets/confirm_number_widget/confirm_number_widget.dart';
import 'package:copa_example/ui/widgets/verification_number_widget/verification_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class WidgetStateEvent {}

class VerificationNumberEvent extends WidgetStateEvent {}


class WidgetBloc extends Bloc<WidgetStateEvent, Widget> {
  WidgetBloc() : super(const VerificationNumberWidget()) {
    on<VerificationNumberEvent>((event, emit) => emit(const ConfirmNumberWidget()));
   
  }
}