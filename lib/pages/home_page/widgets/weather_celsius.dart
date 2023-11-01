import 'package:flutter/material.dart';

class WeatherCelsius extends StatelessWidget {
  const WeatherCelsius({
    required this.iconPath,
    required this.condition,
    required this.celsius,
    super.key,
  });

  final String iconPath;
  final String condition;
  final String celsius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
        //right: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(iconPath),
            height: 140,
            width: 160,
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    celsius.substring(0, 2),
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    (condition.length > 16)
                        ? condition.substring(0, 4)
                        : condition,
                    style: const TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text("°C"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
