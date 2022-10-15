import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:flutter/material.dart';

class EditAddButtonWidget extends BaseStatefulWidget {
  const EditAddButtonWidget({Key? key}) : super(key: key);

  @override
  State<EditAddButtonWidget> createState() => _EditAddButtonWidgetState();
}

class _EditAddButtonWidgetState extends State<EditAddButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Edit Add Button Widget',
      style: TextStyle(color: Colors.white),
    ));
  }
}
