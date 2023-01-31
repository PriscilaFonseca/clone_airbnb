import 'package:flutter/material.dart';

class ListIconsCategoriesWidget extends StatefulWidget {
  const ListIconsCategoriesWidget({super.key});

  @override
  State<ListIconsCategoriesWidget> createState() =>
      _ListIconsCategoriesWidgetState();
}

class _ListIconsCategoriesWidgetState extends State<ListIconsCategoriesWidget> {
  final _iconsCategories = List<Widget>.generate(
    60,
    ((index) => IconButton(
          onPressed: () {},
          icon: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.beach_access_outlined,
                size: 26,
                color: Color(0xFF808080),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Beach',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF808080),
                ),
              ),
            ],
          ),
        )),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 70,
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
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: 12.0,
          ),
          crossAxisCount: 1,
          children: _iconsCategories,
        ),
      ),
    );
  }
}
