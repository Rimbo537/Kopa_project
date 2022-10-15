import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:copa_example/ui/widgets/main_menu/product/user_archive/user_archive.dart';
import 'package:copa_example/ui/widgets/main_menu/product/user_product/user_product.dart';
import 'package:flutter/material.dart';

class ProductAnnouncementWidget extends BaseStatefulWidget {
  const ProductAnnouncementWidget({Key? key}) : super(key: key);

  @override
  State<ProductAnnouncementWidget> createState() =>
      _ProductAnnouncementWidgetState();
}

class _ProductAnnouncementWidgetState extends State<ProductAnnouncementWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          // bottomOpacity: 0.0,
          // toolbarOpacity: 0.0,
          backgroundColor: AppColors.transparent,
          // foregroundColor: AppColors.transparent,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.tabBarColor.withOpacity(1),
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TabBar(
                  indicatorWeight: 1,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.appMainColor,
                  ),
                  tabs: const [
                    Tab(
                      child: Text(
                        'Активні',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Архів',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        body:const TabBarView(children: [
          UserProduct(),
          UserArchive(),
        ]),
      ),
    );
  }
}
