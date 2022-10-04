import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserArchive extends StatefulWidget {
  const UserArchive({Key? key}) : super(key: key);

  @override
  State<UserArchive> createState() => _UserArchiveState();
}

class _UserArchiveState extends State<UserArchive> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('У вас поки що немає архівних оголошень',style: TextStyle(color: Colors.white),),
    );
  }
}
