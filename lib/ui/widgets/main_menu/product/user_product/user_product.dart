import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:flutter/material.dart';

class UserProduct extends BaseStatefulWidget {
  const UserProduct({Key? key}) : super(key: key);

  @override
  State<UserProduct> createState() => _UserProductState();
}

class _UserProductState extends State<UserProduct> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'У вас поки що немає активних оголошень',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
