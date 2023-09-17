import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/styles/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.search,
            size: 40,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.appBarCenter,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.appBarCenter,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 8,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: AppColors.appBarCenter,
                ),
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.appBarCenter,
                ),
              ),
            ],
          ),
          Icon(
            Icons.menu,
            //  IconData(AppIcons.icMenu,),
            size: 40,
            color: AppColors.appBarMenu,
          )
        ],
      ),
    );
  }
}
