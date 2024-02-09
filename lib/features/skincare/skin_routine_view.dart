import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freshh/features/core/widget/custom_progress_indicator.dart';
import 'package:freshh/features/skincare/components/skincare_routine_item_view.dart';
import 'package:freshh/models/globals.dart';
import 'package:freshh/models/morning_routine/morning_routine.dart';
import 'package:freshh/models/night_routine/night_routine.dart';

import '../../models/skincares_list_data/skincares_list_data.dart';

class SkincareRoutineView extends StatefulWidget {
  const SkincareRoutineView(
      {Key? key,
      this.mainScreenAnimationController,
      this.mainScreenAnimation,
      required this.isMorning})
      : super(key: key);

  final bool isMorning;
  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _SkincareRoutineViewState createState() => _SkincareRoutineViewState();
}

class _SkincareRoutineViewState extends State<SkincareRoutineView>
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
            child: SizedBox(
                height: 300,
                width: double.infinity,
                child: FutureBuilder(
                  builder: (context, data) {
                    if (data.data == null) {
                      return const CustomProgressIndicator();
                    }
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // number of items in each row
                        mainAxisSpacing: 8.0, // spacing between rows
                        crossAxisSpacing: 8.0, // spacing between columns
                      ),
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 0, right: 16, left: 16),
                      itemCount: data.data!.docs.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        final int count = data.data!.docs.length > 10
                            ? 10
                            : data.data!.docs.length;
                        final Animation<double> animation =
                            Tween<double>(begin: 0.0, end: 1.0).animate(
                                CurvedAnimation(
                                    parent: animationController!,
                                    curve: Interval((1 / count) * index, 1.0,
                                        curve: Curves.fastOutSlowIn)));
                        animationController?.forward();
                        return Center(
                          child: InkWell(
                            onTap: () {
                              if(widget.isMorning){
                                MorningRoutineRef.doc(
                                    FirebaseAuth.instance.currentUser!.uid)
                                    .get()
                                    .then((value) {
                                      if(value.data!.skincaresListRef.contains(data.data!.docs[index].id)){
                                        var where = value.data!.skincaresListRef.indexOf(data.data!.docs[index].id);
                                        value.data!.skincaresListRef
                                            .removeAt(where);
                                        value.data!.skincaresListUseState.removeAt(where);
                                        MorningRoutineRef.doc(FirebaseAuth
                                            .instance.currentUser!.uid)
                                            .set(
                                            value.data!, SetOptions(merge: true));
                                      }
                                      else  {
                                        value.data!.skincaresListRef
                                            .add(data.data!.docs[index].id);
                                        value.data!.skincaresListUseState.add(false);
                                        MorningRoutineRef.doc(FirebaseAuth
                                            .instance.currentUser!.uid)
                                            .set(
                                            value.data!, SetOptions(merge: true));
                                      }
                                }).onError((error, stackTrace) {
                                  MorningRoutineRef.doc(
                                      FirebaseAuth.instance.currentUser!.uid)
                                      .set(
                                      MorningRoutine([false],
                                          id: FirebaseAuth
                                              .instance.currentUser!.uid,
                                          skincaresListRef: [data.data!.docs[index].id],
                                          dateTime: DateTime.now()),
                                      SetOptions(merge: true));
                                });
                              }
                              else{
                                NightRoutineRef.doc(
                                    FirebaseAuth.instance.currentUser!.uid)
                                    .get()
                                    .then((value) {
                                  if(value.data!.skincaresListRef.contains(data.data!.docs[index].id)){
                                    var where = value.data!.skincaresListRef.indexOf(data.data!.docs[index].id);
                                    value.data!.skincaresListRef
                                        .removeAt(where);
                                    value.data!.skincaresListUseState.removeAt(where);
                                    NightRoutineRef.doc(FirebaseAuth
                                        .instance.currentUser!.uid)
                                        .set(
                                        value.data!, SetOptions(merge: true));
                                  }
                                  else  {
                                    value.data!.skincaresListRef
                                        .add(data.data!.docs[index].id);
                                    value.data!.skincaresListUseState.add(false);
                                    NightRoutineRef.doc(FirebaseAuth
                                        .instance.currentUser!.uid)
                                        .set(
                                        value.data!, SetOptions(merge: true));
                                  }
                                }).onError((error, stackTrace) {
                                  NightRoutineRef.doc(
                                      FirebaseAuth.instance.currentUser!.uid)
                                      .set(
                                      NightRoutine([false],
                                          id: FirebaseAuth
                                              .instance.currentUser!.uid,
                                          skincaresListRef: [data.data!.docs[index].id],
                                          dateTime: DateTime.now()),
                                      SetOptions(merge: true));
                                });
                              }

                            },
                            child: SkincareRoutineItemView(
                              skincaresListData: data.data!.docs[index].data,
                              animation: animation,
                              animationController: animationController!,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  future: SkincareListDataRef.get(),
                )),
          ),
        );
      },
    );
  }
}
