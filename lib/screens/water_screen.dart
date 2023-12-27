import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class WaterScreen extends StatefulWidget {
  const WaterScreen({Key? key}) : super(key: key);

  @override
  _WaterScreenState createState() => _WaterScreenState();
}

class _WaterScreenState extends State<WaterScreen> {
  late List<bool> _glassStatusList;

  @override
  void initState() {
    super.initState();
    _glassStatusList = List.filled(7, false); // 7 elemanlı liste oluşturuldu
  }

  void _drinkWater(int index) {
    setState(() {
      _glassStatusList[index] = !_glassStatusList[index];
    });
  }

  int _calculateWeeklyConsumption() {
    return _glassStatusList
        .where((status) => status)
        .length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Water',
                    style: TextStyle(
                      fontFamily: 'AbhayaLibre',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: const Color(0xFF190933),
                    ),
                  ),
                  SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _glassStatusList.length,
                        (index) => GestureDetector(
                      onTap: () {
                        _drinkWater(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: _glassStatusList[index]
                                ? Color(0xFF6179CD)
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF6179CD),
                              width: 3,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.local_drink,
                              color: _glassStatusList[index]
                                  ? Colors.white
                                  : Color(0xFF6179CD),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                  SizedBox(height: 20),
                  Text(
                    'Weekly Total Glasses: ${_calculateWeeklyConsumption()}',
                    style: TextStyle(
                      fontFamily: 'AbhayaLibre',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: const Color(0xFF190933),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: PieChart(
                  PieChartData(
                    sections: _getPieChartSections(),
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 1,
                    centerSpaceRadius: 40,
                    startDegreeOffset: -90,
                    pieTouchData: PieTouchData(enabled: false),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _getPieChartSections() {
    int weeklyConsumption = _calculateWeeklyConsumption();
    int remainingGlasses = 7 - weeklyConsumption;

    // Haftalık tüketimin veya kalan bardak sayısının sıfır olmamasını kontrol et
    if (weeklyConsumption > 0) {
      return [
        PieChartSectionData(
          color: Color(0xB3DFC3C2),
          value: weeklyConsumption.toDouble(),
          title: '$weeklyConsumption',
          radius: 80,
          titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xFFffffff)),
        ),
        PieChartSectionData(
          color: Color(0xFFDDDDDD),
          value: remainingGlasses.toDouble() > 0 ? remainingGlasses.toDouble() : 0.1, // Eğer remainingGlasses 0 ise 0.1 olarak ata
          title: '$remainingGlasses',
          radius: 80,
          titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xFF000000)),
        ),
      ];
    } else {
      return [
        PieChartSectionData(
          color: Color(0xFFDDDDDD),
          value: 7.toDouble(),
          title: '7',
          radius: 80,
          titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xFF000000)),
        ),
      ];
    }
  }
}
















