import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/button_back/button_back_widget.dart';
import 'package:flutter/material.dart';

class CardInfoScreen extends BaseStatefulWidget {
  const CardInfoScreen({Key? key}) : super(key: key);

  @override
  State<CardInfoScreen> createState() => _CardInfoScreenState();
}

class _CardInfoScreenState extends State<CardInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _cardInfoFormKey = GlobalKey();
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      body: Form(
        key: _cardInfoFormKey,
        child: ListView(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 28,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 300,
                      minHeight: 400,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppImages.sneakerCardImg,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ), // image
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ButtonBackWidget(),
                ), // button Back
              ],
            ),
            Column(
              children: [
                Row(), //price
                Text(''), // name
                Text(''), // size
                Row(
                  // parameters
                  children: [
                    Column(),
                    Column(),
                    Column(),
                  ],
                ),
                Text(''), // material
                Text(''), // description
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// class CardInfoScreen extends StatelessWidget {
//   const CardInfoScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final GlobalKey<FormState> _cardInfoFormKey = GlobalKey();
//     return Scaffold(
//       backgroundColor: AppColors.backgroudColor,
//       body: Form(
//         key: _cardInfoFormKey,
//         child: ListView(
//           children: [
//             Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     top: 28,
//                   ),
//                   child: ConstrainedBox(
//                     constraints: const BoxConstraints(
//                       minWidth: 300,
//                       minHeight: 400,
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           image: const DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage(
//                               AppImages.sneakerCardImg,
//                             ),
//                           ),
//                           borderRadius: BorderRadius.circular(30)),
//                     ),
//                   ),
//                 ), // image
//                 Padding(
//                 padding: EdgeInsets.only(top: 20),
//                 child: ButtonBackWidget(),
//               ), // button Back
//               ],
//             ),
//             Container(
//               child: Column(
//                 children: [
//                   Row(), //price
//                   Text(''), // name
//                   Text(''), // size
//                   Row(
//                     // parameters
//                     children: [
//                       Column(),
//                       Column(),
//                       Column(),
//                     ],
//                   ),
//                   Text(''), // material
//                   Text(''), // descriptionі
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
