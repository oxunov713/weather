import 'package:flutter/material.dart';
import 'package:weather/pages/home_page/widgets/screen.dart';

import '../../styles/app_colors.dart';
import '../controller/main_controller.dart';
import '../data/geo_repository.dart';
import '../data/weather_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MainController controller;

  @override
  void initState() {
    super.initState();
    controller = MainController(
      geoRepository: GeoRepository(),
      weatherRepository: WeatherRepository(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Only the best",
          style: TextStyle(
              fontFamily: "Play", fontSize: 26, color: AppColors.white),
        ),
        backgroundColor: AppColors.appbar,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          await controller.getWeatherData();
          setState(() {});
        },
        child: ScreenPage(
          controller: controller,
        ),
      ),
    );
  }
}
