import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/core/utils/app_string.dart';
import 'package:weather_app/feature/home/screen/home_screen.dart';

class OnBourdingScreen extends StatelessWidget {
  const OnBourdingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight,
            colors: [AppColors.pur,AppColors.wihte])),
            child: Column(children: [ const Spacer(),
              Image.asset("asstes/images/weather.png"),
              const Text(AppString.weather,
              style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              const Text(AppString.wolf,style: TextStyle(color: AppColors.grey),),
              const Spacer(),
              InkWell(onTap: () {
               Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const HomeScreen(),));
            
              },
                child: Container(height: 40,width: 150,
                alignment: Alignment.center,
                  decoration: BoxDecoration(gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    colors: [AppColors.blue,AppColors.wihte]),
                    borderRadius: BorderRadius.circular(50)),
                    child: const Text(AppString.letsStart,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.wihte)),
                    
                ),
              ),
              const Gap(50) ,
            ],),
      ),
    );
  }
}