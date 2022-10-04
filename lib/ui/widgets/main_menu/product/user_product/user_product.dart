import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserProduct extends StatefulWidget {
  const UserProduct({Key? key}) : super(key: key);

  @override
  State<UserProduct> createState() => _UserProductState();
}

class _UserProductState extends State<UserProduct> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('У вас поки що немає активних оголошень',style: TextStyle(color: Colors.white),),
    );
  }
}
