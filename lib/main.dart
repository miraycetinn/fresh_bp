import 'package:flutter/material.dart';
import 'package:freshh/introduction_animation/introduction_animation_screen.dart';
import 'package:get/get.dart'; // Get paketini ekleyin
import 'screens/water_screen.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => IntroductionAnimationScreen()), // 'HomeScreen()' çağrısını değiştirin
      GetPage(name: '/water', page: () => WaterScreen()), // 'WaterScreen()' çağrısını değiştirin
    ],
  ));
}


class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}
