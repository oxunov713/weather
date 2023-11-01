import 'package:flutter/material.dart';
import 'package:weather/utils/icon_path_extension.dart';
import 'package:weather/utils/temp_extension.dart';

import '../../../styles/app_colors.dart';
import '../../controller/main_controller.dart';

import 'hourly_weather.dart';
import 'location_view.dart';
import 'schedule_of_week.dart';
import 'weather_celsius.dart';
import 'weather_info.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key, required this.controller});

  final MainController controller;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.appBGGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: FutureBuilder(
              future: controller.getWeatherData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LocationView(
                          placeName:
                              controller.weatherModel?.resolvedAddress ?? "",
                        ),
                        WeatherCelsius(
                          iconPath: (controller
                                      .weatherModel?.currentConditions?.icon ??
                                  "")
                              .weatherToIconPath,
                          celsius: (controller
                                      .weatherModel?.currentConditions?.temp ??
                                  0.0)
                              .fahrenheitToCelsius,
                          condition: controller.weatherModel?.currentConditions
                                  ?.conditions ??
                              "",
                        ),
                        WeatherInfo(
                          rainFall: controller
                                  .weatherModel?.currentConditions?.precip ??
                              0.0,
                          wind: controller
                                  .weatherModel?.currentConditions?.windspeed ??
                              0.0,
                          humidity: controller
                                  .weatherModel?.currentConditions?.humidity ??
                              0.0,
                        ),
                        ScheduleOfWeek(
                          days: controller.weatherModel?.days ?? [],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        HourlyWeather(
                          hours:
                              controller.weatherModel?.days.firstOrNull?.hours,
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
