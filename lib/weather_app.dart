import 'package:flutter/material.dart';
import 'package:weather_app/feature/home/screen/home_screen.dart';
import 'package:weather_app/feature/on_bourding/on_bourding_screen.dart';
import 'package:weather_app/feature/search/search_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBourdingScreen(),
    );
  }
}