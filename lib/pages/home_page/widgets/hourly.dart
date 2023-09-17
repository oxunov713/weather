import 'package:flutter/material.dart';


import '../../../styles/app_colors.dart';
import '../../../styles/app_icons.dart';

class HourlyWeather extends StatelessWidget {
  const HourlyWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: SizedBox(
              height: 5,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: SizedBox(
                      height: 1,
                      width: double.infinity,
                      child: ColoredBox(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 30,
                      height: 3,
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
              itemBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 55,
                  height: 150,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.white36,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "8:00",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Image(
                          image: AssetImage(AppIcons.icCloudy),
                          width: 24,
                          height: 24,
                        ),
                        Text(
                          "29°",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 15,
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}