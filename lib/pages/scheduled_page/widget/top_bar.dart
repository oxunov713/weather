import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const SizedBox(
              width: 24,
              height: 24,
              child: Icon(Icons.arrow_back),
            ),
          ),
          const Text(
            "Next 7 Days",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
