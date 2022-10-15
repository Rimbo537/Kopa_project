import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:flutter/material.dart';

class FavoriteAnnouncementWidget extends BaseStatefulWidget {
  const FavoriteAnnouncementWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteAnnouncementWidget> createState() =>
      _FavoriteAnnouncementWidgetState();
}

class _FavoriteAnnouncementWidgetState
    extends State<FavoriteAnnouncementWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Favorite Announcement Widget',
      style: TextStyle(color: Colors.white),
    ));
  }
}
