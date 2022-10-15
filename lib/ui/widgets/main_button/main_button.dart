import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MainButton extends BaseStatefulWidget {
  MainButton({Key? key, this.onTap, required this.textButton})
      : super(key: key);

  final onTap;
  final String textButton;

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  final GlobalKey<FormState> _buttonFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _buttonFormKey,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 30,
          bottom: 30,
        ),
        child: GestureDetector(
          onTap: () => widget.onTap,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.appMainColor),
            child: Center(
              child: Text(
                widget.textButton,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class MainButton extends StatelessWidget {
//   MainButton({Key? key, this.onTap, required this.textButton})
//       : super(key: key);
//   final GlobalKey<FormState> _buttonFormKey = GlobalKey();
//   final onTap;
//   final String textButton;
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _buttonFormKey,
//       child: Padding(
//         padding: const EdgeInsets.only(
//           left: 30,
//           right: 30,
//           top: 30,
//           bottom: 30,
//         ),
//         child: GestureDetector(
//           onTap: () => onTap,
//           child: Container(
//             height: 48,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: AppColors.appMainColor),
//             child: Center(
//               child: Text(
//                 textButton,
//                 style: TextStyle(
//                   color: AppColors.white,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
