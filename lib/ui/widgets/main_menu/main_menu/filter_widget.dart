import 'package:copa_example/core/data/ui/widgets/base_stateful_widget.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';

class FilterWidget extends BaseStatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  final List<String> _nameSneakers = ['Sneaker 1', 'Sneaker 2', 'Sneaker 3'];
  String? _selectedSneaker;
  final List<String> _materialSneaker = [
    'Шкіра',
    'Штучна шкіра',
    'Натуральна шкіра'
  ];
  String? _selectedMaterial;
  final List<int> _sizeSneaker = [40, 41, 42, 43, 44, 45];
  String? _selectedSize;
  final List<int> _priceSneaker = [
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    1000
  ];
  String? _selectedPrice;

  // add lists to other DropdownButtonFormField

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.filter_alt),
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: AppColors.filterColor,
          context: context,
          builder: (_) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      /// Модель
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              value: name,
                              child: Text(
                                name,
                                style: const TextStyle(color: Colors.white),
                              ),
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
                      const SizedBox(height: 20),

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
                        items: _materialSneaker.map(
                          (name) {
                            return DropdownMenuItem(
                              value: name,
                              child: Text(
                                name,
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: (name) {
                          setState(() {
                            _selectedMaterial = name as String;
                          });
                        },
                      ),

                      ///
                      const SizedBox(height: 20),

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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DropdownButtonFormField(
                                dropdownColor: AppColors.filterColor,
                                items: _sizeSneaker.map(
                                  (name) {
                                    return DropdownMenuItem(
                                      value: name,
                                      child: Text(
                                        '$name',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    );
                                  },
                                ).toList(),
                                onChanged: (name) {
                                  setState(() {
                                    _selectedSize = name as String?;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DropdownButtonFormField(
                                dropdownColor: AppColors.filterColor,
                                items: _sizeSneaker.map(
                                  (name) {
                                    return DropdownMenuItem(
                                      value: name,
                                      child: Text(
                                        '$name',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    );
                                  },
                                ).toList(),
                                onChanged: (name) {
                                  setState(() {
                                    _selectedSize = name as String?;
                                  });
                                },
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                            ),
                          ),
                        ],
                      ),

                      ///
                      const SizedBox(height: 20),

                      /// Ціна
                      Row(
                        children: const [
                          CircleAvatar(
                            radius: 4.5,
                            backgroundColor: AppColors.appMainColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Ціна',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DropdownButtonFormField(
                                dropdownColor: AppColors.filterColor,
                                items: _priceSneaker.map(
                                  (name) {
                                    return DropdownMenuItem(
                                      value: name,
                                      child: Text(
                                        '$name',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    );
                                  },
                                ).toList(),
                                onChanged: (name) {
                                  setState(() {
                                    _selectedPrice = name as String?;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DropdownButtonFormField(
                                dropdownColor: AppColors.filterColor,
                                items: _priceSneaker.map(
                                  (name) {
                                    return DropdownMenuItem(
                                      value: name,
                                      child: Text(
                                        '$name',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    );
                                  },
                                ).toList(),
                                onChanged: (name) {
                                  setState(() {
                                    _selectedPrice = name as String?;
                                  });
                                },
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                            ),
                          ),
                        ],
                      ),

                      ///
                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'СКИНУТИ',
                              style: TextStyle(
                                color: AppColors.appMainColor,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
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
                )
              ],
            );
          },
        );
      },
    );
  }
}
