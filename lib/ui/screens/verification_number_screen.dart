import 'package:copa_example/core/bloc/widget_state_bloc.dart';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/confirm_number_widget.dart';

import 'package:copa_example/ui/widgets/verification_number_widget.dart';
import 'package:copa_example/view/main/bottom_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class VerificationNumberScreen extends StatefulWidget {
  const VerificationNumberScreen({Key? key}) : super(key: key);

  @override
  State<VerificationNumberScreen> createState() =>
      _VerificationNumberScreenState();
}

class _VerificationNumberScreenState extends State<VerificationNumberScreen> {
  final _formKey = GlobalKey<FormState>();
  final List<Widget> _children = [];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _children.addAll([
  //     const VerificationNumberWidget(),
  //     const ConfirmNumberWidget(),
  //   ]);
  // }

  @override
  Widget build(BuildContext context) {
    // WidgetBloc _bloc = BlocProvider.of<WidgetBloc>(context);
    return BlocProvider(
      create: (context) => WidgetBloc(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            // const SizedBox(height: 104),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                child: Image.asset(
                  AppImages.sneakerImg,
                ),
              ),
            ),
            Container(
              child: Stack(
                fit: StackFit.loose,
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset(AppImages.ellipseImg),
                  const Text(
                    'Вхід',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 28.0,
                    ),
                  ),
                ],
              ),
            ),
    
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: BlocBuilder<WidgetBloc, Widget>(
                builder: (BuildContext context, state) { return Container(
                  child: state,

                  
                  //  _children[Provider.of<BottomNotifier>(context).childIndex],
                  /// VerificationNumberWidget or ConfirmNumberWidget
                ); },
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
