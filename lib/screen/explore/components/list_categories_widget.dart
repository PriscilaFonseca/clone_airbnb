import 'package:flutter/material.dart';

class ListIconsCategoriesWidget extends StatefulWidget {
  const ListIconsCategoriesWidget({super.key});

  @override
  State<ListIconsCategoriesWidget> createState() =>
      _ListIconsCategoriesWidgetState();
}

class _ListIconsCategoriesWidgetState extends State<ListIconsCategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 66,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(
                0xFFE0E0E0,
              ),
              offset: Offset(
                0.0,
                2,
              ),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _listCategories.length,
            itemBuilder: ((context, index) {
              return SizedBox(
                width: size.width * 0.26,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            _listCategories[index].icon,
                            size: 30,
                            color: const Color(
                              0xFF808080,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _listCategories[index].label,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(
                                0xFF808080,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  final List<Category> _listCategories = <Category>[
    Category(
      label: 'Houseboats',
      category: 'Houseboats',
      icon: Icons.house,
    ),
    Category(
      label: 'Amazing pools',
      category: 'Amazing pools',
      icon: Icons.pool,
    ),
    Category(
      label: 'Beach',
      category: 'Beach',
      icon: Icons.beach_access_outlined,
    ),
    Category(
      label: 'Bed & breakfasts',
      category: 'Bed & breakfasts',
      icon: Icons.coffee,
    ),
    Category(
      label: 'Castles',
      category: 'Castles',
      icon: Icons.castle,
    ),
    Category(
      label: 'Luxe',
      category: 'Luxe',
      icon: Icons.airline_seat_individual_suite,
    ),
    Category(
      label: 'Houseboats',
      category: 'Houseboats',
      icon: Icons.beach_access_outlined,
    ),
    Category(
      label: 'Farms',
      category: 'Farms',
      icon: Icons.account_balance,
    ),
    Category(
      label: 'Tropical',
      category: 'Tropical',
      icon: Icons.cabin,
    ),
  ];
}

class Category {
  String label;
  String category;
  IconData icon;

  Category({
    required this.label,
    required this.category,
    required this.icon,
  });
}
