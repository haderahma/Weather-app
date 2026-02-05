import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/core/utils/app_string.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:weather_app/feature/search/search_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          child: Image.asset("asstes/images/cairo.png",fit: BoxFit.cover,)),
        Positioned(top: 20,left: 20,
          child: IconButton(onPressed: (){
            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const SearchScreen(),));
           
          }, 
          icon: const Icon(Icons.search,color: AppColors.black,))),
          Positioned(top: 50,
            left: MediaQuery.of(context).size.width / 3,
            child: const Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text(AppString.cairo,
                style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                Gap(40),
                Text(AppString.c38,
                style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),),
                Gap(10),
                Text(AppString.clear,
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                Gap(10),
                 LiquidGlassLayer(
              child: LiquidGlass(
              shape: LiquidRoundedSuperellipse(borderRadius: 20),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Text(AppString.aQI53,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),))
            ],),
          ),
          const Positioned(top: 600,bottom: -30,left: 20,right: 20,
            child: LiquidGlassLayer(child: LiquidGlass(shape: LiquidRoundedSuperellipse(borderRadius: 20),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column( children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(AppString.dayForecast,
                      style: TextStyle(fontSize: 20,
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold),
                      ),
                      Text(AppString.moreDetails,
                      style: TextStyle(fontSize: 20,
                       color: AppColors.grey,
                       fontWeight: FontWeight.bold),),
                       ],),
                       Gap(30),
                        Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(AppString.monClear,
                      style: TextStyle(fontSize: 20,
                      color: AppColors.wihte,
                      fontWeight: FontWeight.bold),
                      ),
                      Text(AppString.c3926,
                      style: TextStyle(fontSize: 20,
                       color: AppColors.wihte,
                       fontWeight: FontWeight.bold),),
                       ],),
                       Gap(10),
                        Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(AppString.monClear,
                      style: TextStyle(fontSize: 20,
                      color: AppColors.wihte,
                      fontWeight: FontWeight.bold),
                      ),
                      Text(AppString.c3926,
                      style: TextStyle(fontSize: 20,
                       color: AppColors.wihte,
                       fontWeight: FontWeight.bold),),
                       ],),
                       ],),
            ),),),
          )
      ],),
    );
  }
}














