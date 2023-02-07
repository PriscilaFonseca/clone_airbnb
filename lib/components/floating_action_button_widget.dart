import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton.extended(
          onPressed: () {},
          label: const Text(
            'Map',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon: const Icon(
            Icons.map,
            size: 24,
          ),
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}
