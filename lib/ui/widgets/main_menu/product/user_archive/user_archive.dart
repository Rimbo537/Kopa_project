import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:flutter/material.dart';

class UserArchive extends BaseStatefulWidget {
  const UserArchive({Key? key}) : super(key: key);

  @override
  State<UserArchive> createState() => _UserArchiveState();
}

class _UserArchiveState extends State<UserArchive> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'У вас поки що немає архівних оголошень',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
