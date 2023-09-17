import 'package:flutter/material.dart';
import 'package:weather/styles/app_colors.dart';
import 'package:weather/utils/time_extensions.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20,left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Toshkent,\nUzbekistan",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text(
             DateTime.now().weekMonthDay,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.grayText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
