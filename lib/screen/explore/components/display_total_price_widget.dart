import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayTotalPriceWidget extends StatefulWidget {
  const DisplayTotalPriceWidget({super.key});

  @override
  State<DisplayTotalPriceWidget> createState() =>
      _DisplayTotalPriceWidgetState();
}

class _DisplayTotalPriceWidgetState extends State<DisplayTotalPriceWidget> {
  bool _isSelected = false;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFFE0E0E0),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Display total price',
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                  const Text(
                    'Includes all fees, before taxes',
                    style: TextStyle(
                      color: Color(
                        0xFF9E9E9E,
                      ),
                      height: 1.2,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: _buildSwitch(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitch(context) {
    return Transform.scale(
      scale: 1,
      child: CupertinoSwitch(
        value: _isSelected,
        activeColor: Colors.black,
        trackColor: Colors.grey,
        onChanged: (bool value) {
          setState(
            () {
              _isSelected = !_isSelected;
            },
          );
        },
      ),
    );
  }
}
