import 'package:flutter/material.dart';

import '../../../../styles/app_colors.dart';
import '../../models/weather_model/day_model.dart';
import 'widget/info_a_week.dart';
import 'widget/next_days.dart';
import 'widget/top_bar.dart';

class ScheduledPage extends StatelessWidget {
  const ScheduledPage({
    required this.days,
    super.key,
  });

  final List<Day> days;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBGGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const TopBar(),
              Expanded(
                child: ListView(
                  children: [
                    InfoAWeek(
                      day: days.skip(1).take(1).firstOrNull,
                    ),
                    NextDays(
                      days: days.skip(2).take(6).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
