import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:weather_app/core/theme/app_colors.dart';
import 'package:weather_app/core/utils/app_string.dart';
import 'package:weather_app/feature/search/widgets/card_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: const BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topRight,
          colors: [AppColors.pur,AppColors.wihte])
      ),
        child: Column(
          children: [
            Expanded(flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    const Gap(50),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: AppColors.purple,
                        filled: true,
                        prefixIcon: const Icon(Icons.search,
                        color: AppColors.wihte),
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        
                        label: const Text(AppString.enterLoclocation, style: TextStyle(
                          color: AppColors.wihte,
                          fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const Gap(40),
                    const CardWidget(city: AppString.cairo , aqi: AppString.aQI533825, c: AppString.c38,),
                    const Gap(10),
                    const CardWidget(city: AppString.alexandra , aqi: AppString.aQI533825, c: AppString.c35,),
                    const Gap(10),
                    const CardWidget(city: AppString.tokyo , aqi: AppString.aQI533825, c: AppString.c38,),
                   
                  ],
                ),
              ),
            ),
             
                 Expanded(flex: 2,
                   child: Container(height: 300,width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: RadialGradient(tileMode: TileMode.clamp,
                        colors: [Color.fromARGB(255, 133, 144, 245),Color.fromARGB(255, 209, 204, 247)]),
                       borderRadius: BorderRadius.vertical(top: Radius.circular(250))
                   ),
                     child: Column(children: [ 
                                   const Gap(50),
                                   Image.asset("asstes/images/weather.png"),
                                   const Text(AppString.weather,
                                   style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                                   const Text(AppString.wolf,style: TextStyle(color: AppColors.grey),),]),
                   ),
                 ),
            
          ],
        ),
      ),
    );
  }
}