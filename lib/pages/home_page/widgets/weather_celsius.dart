import 'package:flutter/cupertino.dart';
import 'package:weather/styles/app_colors.dart';
import 'package:weather/styles/app_icons.dart';

class WeatherCelsius extends StatelessWidget {
  const WeatherCelsius({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 4,
        bottom: 4,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            height: 220,
            width: 220,
            fit: BoxFit.cover,
            image: AssetImage(
              AppIcons.icCloudyRainSun,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "19",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                      color: AppColors.gradus,
                      height: 1.1,
                    ),
                  ),
                  Text(
                    "Rainy",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: AppColors.gradus,
                    ),
                  ),
                ],
              ),
              Text(
                "°C",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: AppColors.gradus,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
