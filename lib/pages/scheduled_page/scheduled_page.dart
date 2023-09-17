import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/tomorrow_info.dart';
import 'widgets/weeks_info.dart';


class SceduledPage extends StatefulWidget {
  const SceduledPage({super.key});

  @override
  State<SceduledPage> createState() => _SceduledPageState();
}

class _SceduledPageState extends State<SceduledPage> {
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
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppbar(),
                  TommorowInfo(),
                  WeeksInfo(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}