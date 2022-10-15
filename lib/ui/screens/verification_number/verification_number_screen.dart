import 'package:copa_example/core/bloc/phone_auth/phone_auth_bloc.dart';
import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/screens/data_form/data_form_screen.dart';
import 'package:copa_example/ui/screens/main_menu/main_menu_screen.dart';
import 'package:copa_example/ui/widgets/confirm_number/confirm_number_widget.dart';
import 'package:copa_example/ui/widgets/verification_number/verification_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationNumberScreen extends BaseStatefulWidget {
  const VerificationNumberScreen({Key? key}) : super(key: key);

  @override
  State<VerificationNumberScreen> createState() =>
      _VerificationNumberScreenState();
}

class _VerificationNumberScreenState extends State<VerificationNumberScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      body: BlocListener<PhoneAuthBloc, PhoneAuthState>(
        listener: (context, state) {
          if (state is PhoneAuthCodeSentSuccess) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const DataFormScreen(),
              ),
            );
          }
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
        child: BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
          builder: (context, state) {
            return ListView(
              children: [
                // const SizedBox(height: 104),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Image.asset(
                    AppImages.sneakerImg,
                  ),
                ),
                Stack(
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

                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
                    builder: (BuildContext context, state) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
//         child: BlocListener<PhoneAuthBloc, PhoneAuthState>(
// BlocListener<PhoneAuthBloc, PhoneAuthState>(
//         listener: (context, state) {
//           if (state is PhoneAuthCodeSentSuccess) {
//             Navigator.of(context).pushReplacement(
//               MaterialPageRoute(
//                 builder: (_) => const DataFormScreen(),
//               ),
//             );
//           }
//           // If Phone Otp Verified. Send User to Home Screen
//           if (state is PhoneAuthVerified) {
//             Navigator.of(context).pushReplacement(
//               MaterialPageRoute(
//                 builder: (_) => const MainMenuScreen(),
//               ),
//             );
//           }
//           // Show error message if any error occurs while verifying phone number and otp code
//           if (state is PhoneAuthError) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(state.error),
//               ),
//             );
//           }
//         },
//         child: BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
//           builder: (context, state) {
//             return ListView(
//               children: [
//                 // const SizedBox(height: 104),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 70.0),
//                   child: Container(
//                     child: Image.asset(
//                       AppImages.sneakerImg,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Stack(
//                     fit: StackFit.loose,
//                     alignment: AlignmentDirectional.center,
//                     children: [
//                       Image.asset(AppImages.ellipseImg),
//                       const Text(
//                         'Вхід',
//                         style: TextStyle(
//                           color: AppColors.white,
//                           fontSize: 28.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 Padding(
//                   padding: const EdgeInsets.only(top: 32),
//                   child: BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
//                     builder: (BuildContext context, state) {
//                       return Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(18.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               // Here we are conditionally rendering the OtpWidget. When the user presses the Send OTP button we will update the PhoneNumberWidget with the OtpWidget. So that user can enter the OTP.
//                               if (state is! PhoneAuthCodeSentSuccess)
//                                 VerificationNumberWidget(
//                                   phoneNumberController: _phoneNumberController,
//                                 )
//                               else
//                                 ConfirmNumberWidget(
//                                   codeController: _codeController,
//                                   verificationId: state.verificationId,
//                                 ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
  }
}
