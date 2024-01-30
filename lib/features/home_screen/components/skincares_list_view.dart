import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freshh/features/home_screen/components/skincare_view.dart';
import 'package:freshh/models/globals.dart';
import 'package:freshh/models/morning_routine/morning_routine.dart';
import 'package:freshh/models/night_routine/night_routine.dart';
import 'package:get/get.dart';

import '../../../models/skincares_list_data/skincares_list_data.dart';

class SkincareListView extends StatefulWidget {
  const SkincareListView(
      {Key? key,
        this.mainScreenAnimationController,
        this.mainScreenAnimation,
        required this.isMorning})
      : super(key: key);

  final bool isMorning;
  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _SkincareListViewState createState() => _SkincareListViewState();
}

class _SkincareListViewState extends State<SkincareListView>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<SkincareListData> skincaresListData = SkincareGlobal.tabIconsList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));

    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.mainScreenAnimationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: widget.mainScreenAnimation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
            child: Container(
              height: 216,
              width: double.infinity,
              child: widget.isMorning
                  ? FutureBuilder(
                future: MorningRoutineRef.doc(FirebaseAuth.instance.currentUser!.uid).get(),
                builder: (context, data) {
                  if (data.data == null) {
                    return const Text("Hata");
                  }
                  if (data.data!.isBlank!) {
                    return const Text("veri yok");
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, right: 16, left: 16),
                    itemCount:
                    data.data!.data!.skincaresListRef.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final int count = data.data!.data!
                          .skincaresListRef.length >
                          10
                          ? 10
                          : data
                          .data!.data!.skincaresListRef.length;
                      final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animationController!,
                              curve: Interval(
                                  (1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                      animationController?.forward();
//
                      return FutureBuilder(
                          future: SkincareListDataRef.doc(data.data!
                              .data!.skincaresListRef[index])
                              .get(),
                          builder: (context, datas) {
                            if (datas.data!.data == null) {
                              return const Text("Hatas");
                            } else {
                              return SkincareView(
                                skincaresListData: datas.data!.data!,
                                animation: animation,
                                animationController: animationController!,
                              );
                            }
                          });
                    },
                  );
                },
              )
                  : FutureBuilder(
                future: NightRoutineRef.doc(FirebaseAuth.instance.currentUser!.uid).get(),
                builder: (context, data) {
                  if (data.data == null) {
                    return const Text("Hata");
                  }
                  if (data.data!.data == null) {
                    return const Text("veri yok");
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, right: 16, left: 16),
                    itemCount:
                    data.data!.data?.skincaresListRef.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final int count = data.data!.data
                      !.skincaresListRef.length >
                          10
                          ? 10
                          : data
                          .data!.data!.skincaresListRef.length;
                      final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                              parent: animationController!,
                              curve: Interval(
                                  (1 / count) * index, 1.0,
                                  curve: Curves.fastOutSlowIn)));
                      animationController?.forward();
//
                      return FutureBuilder(
                          future: SkincareListDataRef.doc(data.data!
                              .data!.skincaresListRef[index])
                              .get(),
                          builder: (context, datas) {
                            if (datas.data == null) {
                              return const Text("Load");
                            }
                            if (datas.data!.data == null) {
                              return const Text("Hatas");
                            } else {
                              return SkincareView(
                                skincaresListData: datas.data!.data!,
                                animation: animation,
                                animationController: animationController!,
                              );
                            }
                          });
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
