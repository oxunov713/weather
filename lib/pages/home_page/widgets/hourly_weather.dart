import 'package:flutter/material.dart';
import 'package:weather/utils/icon_path_extension.dart';
import 'package:weather/utils/temp_extension.dart';

import '../../../models/weather_model/hour_model.dart';
import '../../../styles/app_colors.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({
    required this.hours,
    super.key,
  });

  final List<Hour>? hours;

  bool checkTimeNow(Hour hour) =>
      "${DateTime.now().hour}".padLeft(2, "0") ==
      (hour.datetime?.substring(0, 2) ?? "00");

  @override
  Widget build(BuildContext context) {
    if (hours == null) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.0,
              vertical: 10,
            ),
            child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.5),
                    child: SizedBox(
                      height: 1,
                      width: double.infinity,
                      child: ColoredBox(
                        color: AppColors.divider,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: SizedBox(
                      width: 10,
                      height: 4,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: hours!.length + 1,
              itemBuilder: (context, index) => const SizedBox(width: 10),
              separatorBuilder: (context, index) {
                Hour hour = hours![index];
                return Padding(
                  padding: const EdgeInsets.only(
                   // bottom: 15.0,
                  ),
                  child: SizedBox(
                    width: 60,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: checkTimeNow(hour)
                            ? AppColors.white50
                            : AppColors.white30,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          checkTimeNow(hour)
                              ? const Text(
                                  "now",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              : Text(
                                  hour.datetime?.substring(0, 5) ?? "",
                                  style: const TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image(
                            image: AssetImage(
                              (hour.icon ?? "").weatherToIconPath,
                            ),
                            width: 35,
                            height: 35,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${(hour.temp ?? 0.0).fahrenheitToCelsius}°",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
