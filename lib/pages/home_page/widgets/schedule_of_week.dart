import 'package:flutter/material.dart';

import '../../../models/weather_model/day_model.dart';
import '../../scheduled_page/scheduled_page.dart';

class ScheduleOfWeek extends StatelessWidget {
  const ScheduleOfWeek({
    required this.days,
    super.key,
  });

  final List<Day> days;

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
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Tomorrow",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduledPage(days: days),
                ),
              );
            },
            child: const Row(
              children: [
                Text(
                  "Next 7 Days",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
