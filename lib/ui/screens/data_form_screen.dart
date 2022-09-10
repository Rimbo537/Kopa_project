import 'package:copa_example/theme/app_colors.dart';

import 'package:flutter/material.dart';


class DataFormScreen extends StatefulWidget {
  const DataFormScreen({Key? key}) : super(key: key);

  @override
  State<DataFormScreen> createState() => _DataFormScreenState();
}

class _DataFormScreenState extends State<DataFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Data Form Screen',
          style: TextStyle(
            color: Colors.white,
            backgroundColor: AppColors.backgroudColor,
          ),
        ),
      ),
    );
  }
}
