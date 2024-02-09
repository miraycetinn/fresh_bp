import 'package:freshh/models/skincares_list_data/skincares_list_data.dart';
import 'package:flutter_map/flutter_map.dart';
class Water {
  static int glassSize = 250;
  static bool bottleEmpty = false;
  static DateTime lastDrink = DateTime.now();
  static double dailyGoal = 3.3;
  static int drankValue = 2100;
}

class BodyMeasurement {
  static double weight = 206.8;
  static int height = 185;
  static int bodyFat = 20;
}

class SkincareGlobal{
static DateTime date  = DateTime.now();
static List<SkincareListData> tabIconsList = <SkincareListData>[
  SkincareListData(
    id: '0',
    imagePath: 'https://cdn-icons-png.flaticon.com/512/6608/6608101.png',
    titleTxt: 'Cleanser',
    startColor: '#FA7D82',
    endColor: '#FFB295',
    dateTime: DateTime.now()
  ),
  SkincareListData(
    id: '1',
    imagePath: 'https://cdn-icons-png.flaticon.com/512/6608/6608101.png',
    titleTxt: 'Cleanser',
    startColor: '#738AE6',
    endColor: '#5C5EDD',
      dateTime: DateTime.now()

  ),
  SkincareListData(
    id: '2',
    imagePath: 'https://cdn-icons-png.flaticon.com/512/6608/6608101.png',
    titleTxt: 'Face Cream',
    startColor: '#FE95B6',
    dateTime: DateTime.now(),

    endColor: '#FF5287',
  ),
  SkincareListData(
    id: '4',
    imagePath: 'https://cdn-icons-png.flaticon.com/512/6608/6608101.png',
    titleTxt: 'Sunscreen',
    startColor: '#6F72CA',
    dateTime: DateTime.now(),

    endColor: '#1E1466',
  ),
];


TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'fresh.flutter_map',
  tileProvider: NetworkTileProvider(),
);
}