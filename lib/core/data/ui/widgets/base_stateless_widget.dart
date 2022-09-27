import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  Widget getLayout(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return getLayout(context);
  }
}