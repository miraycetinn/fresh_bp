import 'package:flutter/material.dart';
import 'package:freshh/features/account/account_screen.dart';
import 'package:freshh/features/core/bottom_navigation_view/bottom_bar_view.dart';
import 'package:freshh/features/maps/maps_screen.dart';
import 'package:freshh/features/products/products_screen.dart';
import 'package:freshh/features/skincare/skincare_routine_screen.dart';
import 'package:freshh/models/tabIcon_data.dart';
import 'package:get/get.dart';

import 'features/home_screen/my_diary_screen.dart';
import 'themes/freshh_app_theme.dart';

class FreshhAppHomeScreen extends StatefulWidget {
  const FreshhAppHomeScreen({super.key});

  @override
  _FreshhAppHomeScreenState createState() => _FreshhAppHomeScreenState();
}

class _FreshhAppHomeScreenState extends State<FreshhAppHomeScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: FreshhAppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = MyDiaryScreen(animationController: animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FreshhAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: [
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: [
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {Get.to(MapsScreen());},
          changeIndex: (int index) {
            if (index == 0) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      MyDiaryScreen(animationController: animationController);
                });
              });
            } else if (index == 1) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      SkincareRoutineScreen(animationController: animationController);
                });
              });
            } else if (index == 2) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      ProductsScreen(animationController: animationController);
                });
              });
            } else if (index == 3) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      AccountScreen();
                });
              });
            }
          },
        ),
      ],
    );
  }
}
