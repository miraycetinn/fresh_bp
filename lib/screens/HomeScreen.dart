import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> isCheckedList = [false, false, false, false];
  List<bool> isCheckedList2 = [false, false, false, false];
  late PageController _pageController;
  int _selectedIndex = 0;
  int _drankWaterCount = 0;
  bool _isGlassFull = false;
  int _totalGlasses = 5; // Günlük içilmesi gereken bardak sayısı
  List<bool> _glassStatusList = List.filled(5, false); // Bardak durumu listesi

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Burada ilgili sayfaya yönlendirme işlemleri yapılabilir.
  }

  void _drinkWater(int index) {
    setState(() {
      _glassStatusList[index] = !_glassStatusList[index];
      if (_glassStatusList[index]) {
        _drankWaterCount++;
      } else {
        _drankWaterCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              'Good Morning,',
              style: TextStyle(
                fontFamily: 'AbhayaLibre',
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: const Color(0xFF190933),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Jane Doe',
              style: TextStyle(
                fontFamily: 'AbhayaLibre',
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: const Color(0xFF190933),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return buildRoutineContainer();
                  } else {
                    return buildNewRoutineContainer();
                  }
                },
              ),
            ),

            const SizedBox(height: 5), // Boşluk eklendi
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/water');
                      },
                      child: Text(
                        'Water',
                        style: TextStyle(
                          fontFamily: 'AbhayaLibre',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: const Color(0xFF190933),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _totalGlasses,
                          (index) => GestureDetector(
                        onTap: () => _drinkWater(index),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.symmetric(horizontal: 9),
                          decoration: BoxDecoration(
                            color: _glassStatusList[index] ? Color(0xFF6179CD) : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF6179CD),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.local_drink,
                              color: _glassStatusList[index] ? Colors.white : Color(0xFF6179CD),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Total Glasses: $_drankWaterCount',
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
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F7),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Color(0xFF190933),
          unselectedItemColor: Color(0xB3DFC3C2),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Page 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Page 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Page 3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Page 4',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Page 5',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRoutineContainer() {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 140,
            height: 140,
            child: Image.asset(
              'docs/assets/assets/sun_image.png',
              // Görüntüyü istediğiniz ölçekte uygun şekilde yeniden boyutlandırabilirsiniz
              fit: BoxFit.cover, // veya BoxFit.fill, BoxFit.contain, BoxFit.fitHeight, BoxFit.fitWidth, vb.
            ),
          ),
        ),

        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: const Color(0xB3DFC3C2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Morning Routine',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF190933),
                  ),
                ),
                const SizedBox(height: 8),
                for (int i = 0; i < isCheckedList.length; i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedList[i],
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedList[i] = value ?? false;
                              });
                            },
                          ),
                          const SizedBox(width: 1),
                          Text(
                            'Checkbox ${i + 1}',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xFF190933),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }


  Widget buildNewRoutineContainer() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: const Color(0xFF190933),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 225, // Resmi sol üst köşeye yerleştirmek için left değerini belirliyoruz
              child: Container(
                width: 110,
                height: 110,
                child: Image.asset(
                  'docs/assets/assets/fullmoon_shine.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Night Routine',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xB3DFC3C2),
                  ),
                ),
                const SizedBox(height: 8),
                // Diğer içerikler devam ediyor...
                for (int i = 0; i < isCheckedList2.length; i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedList2[i],
                            onChanged: (bool? value) {
                              setState(() {
                                isCheckedList2[i] = value ?? false;
                              });
                            },
                          ),
                          const SizedBox(width: 1),
                          Text(
                            'Checkbox ${i + 1}',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xB3DFC3C2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );


  }
}



























