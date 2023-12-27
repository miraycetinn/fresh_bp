import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Get paketini ekleyin
import 'screens/HomeScreen.dart'; // HomeScreen ve WaterScreen dosyalarını import ettiğinizden emin olun
import 'screens/water_screen.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => HomeScreen()), // 'HomeScreen()' çağrısını değiştirin
      GetPage(name: '/water', page: () => WaterScreen()), // 'WaterScreen()' çağrısını değiştirin
    ],
  ));
}


