import '/pages/home_page/widgets/weather_celsius.dart';
import '/pages/home_page/widgets/custom_app_bar.dart';
import '/pages/home_page/widgets/location_view.dart';
import '/pages/home_page/widgets/weather_info.dart';

import 'package:flutter/material.dart';

import '/styles/app_colors.dart';
import 'widgets/hourly.dart';
import 'widgets/shcedule_of_week.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          child: ListView(
            children:  [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  LocationView(),
                  WeatherCelsius(),
                  WeatherInfo(),
                  ScheduleOfWeek(),
                  HourlyWeather(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}