import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonBackWidget extends BaseStatefulWidget {
  const ButtonBackWidget({Key? key}) : super(key: key);

  @override
  State<ButtonBackWidget> createState() => _ButtonBackWidgetState();
}

class _ButtonBackWidgetState extends State<ButtonBackWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 7,
          minHeight: 14,
        ),
        child: IconButton(
          onPressed: () {
            Get.toNamed('/main_menu_screen');
          },
          icon: const Icon(Icons.arrow_back),
        ));
  }
}
