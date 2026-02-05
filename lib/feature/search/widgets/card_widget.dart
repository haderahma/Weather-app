import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/core/utils/app_string.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.city, required this.aqi, required this.c});
  final String city;
  final String aqi;
  final String c;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(city,
                  style: const TextStyle(fontSize: 20,
                  color: AppColors.wihte,
                  fontWeight: FontWeight.bold),),
                  const Gap(20),
                  Text(aqi,
                  style: const TextStyle(fontSize: 16,
                  color: AppColors.wihte,
                  fontWeight: FontWeight.bold),),
          ],),
             Text(c,
                  style: const TextStyle(fontSize: 32,
                  color: AppColors.wihte,
                  fontWeight: FontWeight.bold),),
        ],),
      ),
    );
  }
}