import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditAddButtonWidget extends StatefulWidget {
  const EditAddButtonWidget({Key? key}) : super(key: key);

  @override
  State<EditAddButtonWidget> createState() => _EditAddButtonWidgetState();
}

class _EditAddButtonWidgetState extends State<EditAddButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        'Edit Add Button Widget',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
