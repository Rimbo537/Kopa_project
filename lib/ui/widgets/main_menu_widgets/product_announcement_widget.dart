import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductAnnouncementWidget extends StatefulWidget {
  const ProductAnnouncementWidget({Key? key}) : super(key: key);

  @override
  State<ProductAnnouncementWidget> createState() =>
      _ProductAnnouncementWidgetState();
}

class _ProductAnnouncementWidgetState extends State<ProductAnnouncementWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text('Product Announcement Widget'),
    ));
  }
}
