import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<String> _nameSneakers = ['Sneaker 1', 'Sneaker 2', 'Sneaker 3'];
  String? _selectedSneaker;

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: Icon(Icons.filter_alt),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: AppColors.filterColor,
                context: context,
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        /// Модель
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 4.5,
                              backgroundColor: AppColors.appMainColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Модель',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        DropdownButtonFormField(
                          dropdownColor: AppColors.filterColor,
                          items: _nameSneakers.map(
                            (name) {
                              return DropdownMenuItem(
                                child: Text(
                                  name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                value: name,
                              );
                            },
                          ).toList(),
                          onChanged: (name) {
                            setState(() {
                              _selectedSneaker = name as String;
                            });
                          },
                        ),
                        ///
                        SizedBox(height: 20),
                        /// Матеріал
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 4.5,
                              backgroundColor: AppColors.appMainColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Матеріал',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        DropdownButtonFormField(
                          dropdownColor: AppColors.filterColor,
                          items: _nameSneakers.map(
                            (name) {
                              return DropdownMenuItem(
                                child: Text(
                                  name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                value: name,
                              );
                            },
                          ).toList(),
                          onChanged: (name) {
                            setState(() {
                              _selectedSneaker = name as String;
                            });
                          },
                        ),
                        ///
                        /// Розмір
                         Row(
                          children: const [
                            CircleAvatar(
                              radius: 4.5,
                              backgroundColor: AppColors.appMainColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Розмір',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        
                        Row(
                          children: [
                            DropdownButtonFormField(
                              menuMaxHeight: 50,
                              dropdownColor: AppColors.filterColor,
                              items: _nameSneakers.map(
                                (name) {
                                  return DropdownMenuItem(
                                    child: Text(
                                      name,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    value: name,
                                  );
                                },
                              ).toList(),
                              onChanged: (name) {
                                setState(() {
                                  _selectedSneaker = name as String;
                                });
                              },
                            ),
                            DropdownButtonFormField(
                                menuMaxHeight: 50,
                              dropdownColor: AppColors.filterColor,
                              items: _nameSneakers.map(
                                (name) {
                                  return DropdownMenuItem(
                                    child: Text(
                                      name,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    value: name,
                                  );
                                },
                              ).toList(),
                              onChanged: (name) {
                                setState(() {
                                  _selectedSneaker = name as String;
                                });
                              },
                            ),
                          ],
                        ),
                        ///
                        Row(),
                        Row(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'СКИНУТИ',
                                style: TextStyle(
                                  color: AppColors.appMainColor,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'ЗАСТОСУВАТИ',
                                style: TextStyle(
                                  color: AppColors.appMainColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                });
          },
        );
  }
}