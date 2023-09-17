import 'package:flutter/material.dart';

import '../../../styles/app_colors.dart';
import '../../../styles/app_icons.dart';

class WeeksInfo extends StatelessWidget {
  const WeeksInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          InfoWeek(
            weekName: "Thursday",
            degree: 21,
            icon: AppIcons.icSun,
          ),
          InfoWeek(
            weekName: "Friday",
            degree: 24,
            icon: AppIcons.icSun,
          ),
          InfoWeek(
            weekName: "Saturday",
            degree: 18,
            icon: AppIcons.icCloudySun,
          ),
          InfoWeek(
            weekName: "Sunday",
            degree: 12,
            icon: AppIcons.icCloudy,
          ),
          InfoWeek(
            weekName: "Monday",
            degree: 16,
            icon: AppIcons.icCloudyRain,
          ),
          InfoWeek(
            weekName: "Tuesday",
            degree: 18,
            icon: AppIcons.icCloudyRainSun,
          ),
        ],
      ),
    );
  }
}

class InfoWeek extends StatelessWidget {
  final String weekName;
  final int degree;
  final icon;

  const InfoWeek({
    super.key,
    required this.weekName,
    required this.degree,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              color: AppColors.white36,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    weekName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "$degree°   ",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Image.asset(
                        icon,
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}