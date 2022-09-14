import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoriteAnnouncementWidget extends StatefulWidget {
  const FavoriteAnnouncementWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteAnnouncementWidget> createState() =>
      _FavoriteAnnouncementWidgetState();
}

class _FavoriteAnnouncementWidgetState
    extends State<FavoriteAnnouncementWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text('Favorite Announcement Widget'),
    ));
  }
}
