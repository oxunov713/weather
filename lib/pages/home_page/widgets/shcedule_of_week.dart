import 'package:flutter/material.dart';
import '../../scheduled_page/scheduled_page.dart';
import '/styles/app_colors.dart';

class ScheduleOfWeek extends StatelessWidget {
  const ScheduleOfWeek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 15),
              Text(
                "Tomorrow",
                style: TextStyle(
                  color: AppColors.grayText,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SceduledPage(),
                ),
              );
            },
            child: Row(
              children: [
                const Text(
                  "Next 7 Days",
                  style: TextStyle(
                    color: AppColors.grayText,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 14,
                    color: AppColors.grayText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}