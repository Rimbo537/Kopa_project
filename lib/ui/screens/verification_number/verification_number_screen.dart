import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/core/bloc/widget_state_bloc.dart';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/main_menu/main_menu_screen.dart';
import 'package:copa_example/ui/widgets/confirm_number/confirm_number_widget.dart';
import 'package:copa_example/ui/widgets/verification_number/verification_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationNumberScreen extends StatefulWidget {
  const VerificationNumberScreen({Key? key}) : super(key: key);

  @override
  State<VerificationNumberScreen> createState() =>
      _VerificationNumberScreenState();
}

class _VerificationNumberScreenState extends State<VerificationNumberScreen> {
  late TextEditingController _phoneNumberController;
  late TextEditingController _codeController;

  @override
  void initState() {
    _phoneNumberController = TextEditingController();
    _codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  // final _formKey = GlobalKey<FormState>();
  // final List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      body: BlocListener<PhoneAuthBloc, PhoneAuthState>(
        listener: (context, state) {
          // If Phone Otp Verified. Send User to Home Screen
          if (state is PhoneAuthVerified) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const MainMenuScreen(),
              ),
            );
          }
          // Show error message if any error occurs while verifying phone number and otp code
          if (state is PhoneAuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        child: ListView(
          children: [
            // const SizedBox(height: 104),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
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
              child: BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
                builder: (BuildContext context, state) {
                  if (state is PhoneAuthInitial) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Center(
                      child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Firebase x Flutter: \nPhone Authentication",
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                        const Divider(
                          height: 30,
                          endIndent: 20,
                          indent: 20,
                          thickness: 1.5,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // Here we are conditionally rendering the OtpWidget. When the user presses the Send OTP button we will update the PhoneNumberWidget with the OtpWidget. So that user can enter the OTP.
                        if (state is! PhoneAuthCodeSentSuccess)
                          VerificationNumberWidget(
                            phoneNumberController: _phoneNumberController,
                          )
                        else
                          ConfirmNumberWidget(
                            codeController: _codeController,
                            verificationId: state.verificationId,
                          ),
                      ],
                    ),
                  ));

                  // return Container(
                  //   child: state,
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}