import 'package:flutter/material.dart';
import 'package:weather_app/services/api_service.dart';

import 'home_page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Inter",
      ),
      title: "Weather G8",
      home: const HomePage(),
    );
  }
}
