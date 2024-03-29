import 'package:flutter/material.dart';
import 'package:freshh/features/auth/utils/auth_utils.dart';
import 'package:freshh/features/core/widget/custom_progress_indicator.dart';
import 'package:freshh/main.dart';
import 'package:freshh/models/history_of_morning/history_of_morning.dart';
import 'package:freshh/models/history_of_night/history_of_night.dart';
import 'package:freshh/models/skincares_list_data/skincares_list_data.dart';
import 'package:freshh/models/user_skincare_history/user_skincare_history.dart';
import 'package:freshh/themes/freshh_app_theme.dart';

class SkincareView extends StatefulWidget {
  const SkincareView({Key? key, required this.skincaresListData, required this.animationController, required this.animation, required this.isMorning})
      : super(key: key);
  final SkincareListData skincaresListData;
  final AnimationController animationController;
  final Animation<double> animation;
  final bool isMorning;

  @override
  State<SkincareView> createState() => _SkincareViewState();
}

class _SkincareViewState extends State<SkincareView> {
  UserSkincareHistoryDocumentReference ref = UserSkincareHistoryRef.doc(Authentication().auth.currentUser!.uid);
  late UserSkincareHistoryDocumentSnapshot doc;

  Future<void> getFirebaseData() async {
    doc = await ref.get();
  }

  List<Widget> getIcon(BuildContext context) {
    return [
      Positioned(
        top: 0,
        left: 0,
        child: Container(
          width: 84,
          height: 84,
          decoration: BoxDecoration(
            color: FreshhAppTheme.nearlyWhite.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
        ),
      ),
      Positioned(
        top: 0,
        left: 8,
        child: SizedBox(
          width: 80,
          height: 80,
          child: Image.network(widget.skincaresListData.imagePath),
        ),
      )
    ];
  }

  onDo() {
    setState(() {
      widget.skincaresListData.isUsed = true;
    });
    if (widget.isMorning)
      {
        var data = HistoryOfMorning(action: true, dateTime: DateTime.now(), skincareListRef: widget.skincaresListData.id);
        if (doc.exists) {
          if (doc.data?.historyOfMorning==null) {
            ref.update(historyOfMorning: [data]);


          }
          doc.data?.historyOfMorning?.add(data);
          ref.update(historyOfMorning: (doc.data!.historyOfMorning));
        }
        else {
          ref.set(UserSkincareHistory(id: Authentication().auth.currentUser!.uid,historyOfMorning: [data], dateTime: DateTime.now()));
        }
      }
    else{
      var data = HistoryOfNight(action: true, dateTime: DateTime.now(), skincareListRef: widget.skincaresListData.id);
      if (doc.exists) {
        if (doc.data?.historyOfNight==null) {

          ref.update(historyOfNight: [data]);
        }
        doc.data?.historyOfNight?.add(data);
        ref.update(historyOfNight: (doc.data!.historyOfNight));
      }
      else {
        ref.set(UserSkincareHistory(id: Authentication().auth.currentUser!.uid, historyOfNight: [data],dateTime: DateTime.now()));
      }
    }
  }

  onReverse() {
    setState(() {
      widget.skincaresListData.isUsed = false;
    });
    if (widget.isMorning)
    {
      var data = HistoryOfMorning(action: false, dateTime: DateTime.now(), skincareListRef: widget.skincaresListData.id);
      if (doc.exists) {
        if (doc.data?.historyOfMorning == null) {
          ref.update(historyOfMorning: [data]);

        }
        doc.data?.historyOfMorning?.add(data);
        ref.update(historyOfMorning: (doc.data!.historyOfMorning));
      }
      else {
        ref.set(UserSkincareHistory(id: Authentication().auth.currentUser!.uid,historyOfMorning:[data] , dateTime: DateTime.now()));
      }
    }
    else{
      var data = HistoryOfNight(action: false, dateTime: DateTime.now(), skincareListRef: widget.skincaresListData.id);
      if (doc.exists) {
        if (doc.data?.historyOfMorning == null) {
          ref.update(historyOfNight: [data]);

        }
        doc.data?.historyOfNight?.add(data);
        ref.update(historyOfNight: (doc.data!.historyOfNight));
      }
      else {
        ref.set(UserSkincareHistory(id: Authentication().auth.currentUser!.uid,historyOfNight: [data], dateTime: DateTime.now()));
      }
    }
  }

  Widget getControlButton(BuildContext context) {
    return widget.skincaresListData.isUsed
        ? Container(
      decoration: BoxDecoration(
        color: FreshhAppTheme.nearlyWhite,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(color: FreshhAppTheme.nearlyBlack.withOpacity(0.4), offset: const Offset(8.0, 8.0), blurRadius: 8.0),
        ],
      ),
      child: InkWell(
        onTap: onReverse,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(
            Icons.remove,
            color: HexColor(widget.skincaresListData.endColor),
            size: 24,
          ),
        ),
      ),
    )
        : Container(
      decoration: BoxDecoration(
        color: FreshhAppTheme.nearlyWhite,
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(color: FreshhAppTheme.nearlyBlack.withOpacity(0.4), offset: const Offset(8.0, 8.0), blurRadius: 8.0),
        ],
      ),
      child: InkWell(
        onTap: onDo,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(
            Icons.add,
            color: HexColor(widget.skincaresListData.endColor),
            size: 24,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait([getFirebaseData()]),
        builder: (context, _) {
          if (!(_.connectionState == ConnectionState.done)) return const CustomProgressIndicator();
          return AnimatedBuilder(
            animation: widget.animationController,
            builder: (BuildContext context, Widget? child) {
              return FadeTransition(
                opacity: widget.animation,
                child: Transform(
                  transform: Matrix4.translationValues(100 * (1.0 - widget.animation.value), 0.0, 0.0),
                  child: SizedBox(
                    width: 130,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: HexColor(widget.skincaresListData.endColor).withOpacity(0.6),
                                    offset: const Offset(1.1, 4.0),
                                    blurRadius: 8.0),
                              ],
                              gradient: LinearGradient(
                                colors: <HexColor>[
                                  HexColor(widget.skincaresListData.startColor),
                                  HexColor(widget.skincaresListData.endColor),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(54.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 54, left: 16, right: 16, bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.skincaresListData.titleTxt,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontFamily: FreshhAppTheme.fontName,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      color: FreshhAppTheme.white,
                                    ),
                                  ),
                                  getControlButton(context)
                                ],
                              ),
                            ),
                          ),
                        ),
                        ...getIcon(context)
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
