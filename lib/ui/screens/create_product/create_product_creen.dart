import 'package:copa_example/resources/app_images.dart';
import 'package:copa_example/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateProductScreen extends StatefulWidget {
  const CreateProductScreen({Key? key}) : super(key: key);

  @override
  State<CreateProductScreen> createState() => _CreateProductScreenState();
}
//////////////////ПЕРЕДЕЛАТЬ МЕТОДАМИ, И В СКАФОЛД ПЕРЕДАВАТЬ///////////////////////////////////////////////////////////////

class _CreateProductScreenState extends State<CreateProductScreen> {
  final List<String> _nameSneakers = ['Sneaker 1', 'Sneaker 2', 'Sneaker 3'];
  String? _selectedSneaker;
  final List<String> _materialSneaker = [
    'Шкіра',
    'Штучна шкіра',
    'Натуральна шкіра'
  ];
  String? _selectedMaterial;

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
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroudColor,
      appBar: AppBar(
          backgroundColor: AppColors.transparent,
          title: const Icon(Icons.arrow_back_ios),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Зберегти',
                style: TextStyle(
                  color: AppColors.appMainColor,
                  fontSize: 15.0,
                ),
              ),
            ),
          ]),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 4.5,
                  backgroundColor: AppColors.appMainColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Додати фото',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          Container(
            decoration: const BoxDecoration(
              color: AppColors.cardColor,
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 2, bottom: 5),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                             const BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 10, right: 2, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                            const  BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                           const   BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(minHeight: 75, minWidth: 75),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 16.0, top: 16.0),
            child: Row(
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
                SizedBox(height: 20),
              ],
            ),
          ),
///////////////////////////////////////////////////////////////////////
          Container(
            decoration: const BoxDecoration(color: AppColors.cardColor),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 48.0, vertical: 25.0),
                  child: Image.asset(AppImages.sizeSneakerImg),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2.0,
                                color: AppColors.filterColor,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'Розмір',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '39',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  VerticalDivider(
                                    width: 10,
                                    thickness: 1,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'EU',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2.0,
                                color: AppColors.filterColor,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'Довжина / см',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  VerticalDivider(
                                    width: 10,
                                    thickness: 1,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '39',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2.0,
                                color: AppColors.filterColor,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'Ширина / см',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  VerticalDivider(
                                    width: 10,
                                    thickness: 1,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '39',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 16,
            ),
            child: Column(
              children: [
                Column(
                  children: [
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
                  ],
                ),
                Column(
                  children: [
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

                    ///
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 4.5,
                          backgroundColor: AppColors.appMainColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Опис',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    TextField(
                      controller: _descriptionController,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),

                    ///
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
                    DropdownButtonFormField(
                      dropdownColor: AppColors.filterColor,
                      items: _priceSneaker.map(
                        (name) {
                          return DropdownMenuItem(
                            value: name,
                            child: Text(
                              '$name',
                              style: const TextStyle(color: Colors.white),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (name) {
                        setState(() {
                          _selectedPrice = name as String;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
