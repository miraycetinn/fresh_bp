import 'package:flutter/material.dart';
import 'package:freshh/features/auth/utils/auth_utils.dart';
import 'package:freshh/features/core/widget/custom_progress_indicator.dart';
import 'package:freshh/features/home_screen/components/wave_view.dart';
import 'package:freshh/main.dart';
import 'package:freshh/models/history_of_water/history_of_water.dart';
import 'package:freshh/models/user_skincare_history/user_skincare_history.dart';
import 'package:freshh/themes/freshh_app_theme.dart';

class WaterView extends StatefulWidget {
  const WaterView({Key? key, this.mainScreenAnimationController, this.mainScreenAnimation}) : super(key: key);

  final AnimationController? mainScreenAnimationController;
  final Animation<double>? mainScreenAnimation;

  @override
  _WaterViewState createState() => _WaterViewState();
}

class _WaterViewState extends State<WaterView> with TickerProviderStateMixin {
  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  int glassSize = 250;

  Widget getBottleEmpty(BuildContext context) {
    return doc.data!.historyOfWater!.where((element) => const Duration(days: 1) < DateTime.now().difference(element.dateTime)).isNotEmpty &&
            doc.data!.historyOfWater!.isEmpty
        ? Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset('assets/freshh_app/bell.png'),
                ),
                Flexible(
                  child: Text(
                    'Your bottle is empty, refill it!.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: FreshhAppTheme.fontName,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 0.0,
                      color: HexColor('#F65283'),
                    ),
                  ),
                ),
              ],
            ),
          )
        : const SizedBox();
  }

  UserSkincareHistoryDocumentReference ref = UserSkincareHistoryRef.doc(Authentication().auth.currentUser!.uid);
  late UserSkincareHistoryDocumentSnapshot doc;

  Widget getLastDrink(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Icon(
                  Icons.access_time,
                  color: FreshhAppTheme.grey.withOpacity(0.5),
                  size: 16,
                ),
              ),
              if (doc.exists)
                if (doc.data!.historyOfWater!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      'Last drink ${doc.data?.historyOfWater?.last.dateTime.hour ?? 0}:${doc.data?.historyOfWater?.last.dateTime.minute ?? 0}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FreshhAppTheme.fontName,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        letterSpacing: 0.0,
                        color: FreshhAppTheme.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }

  double dailyGoal = 4;

  Widget getDailyGoal(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 2, bottom: 14),
      child: Text(
        'of daily goal ${dailyGoal}L',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: FreshhAppTheme.fontName,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.0,
          color: FreshhAppTheme.darkText,
        ),
      ),
    );
  }

  Widget getDrankValue(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 3),
          child: Text(
            ((doc.data!.historyOfWater!
                            .where((element) => 1 > DateTime.now().difference(element.dateTime).inDays)
                            .where((element) => element.action)
                            .length -
                        doc.data!.historyOfWater!
                            .where((element) => 1 > DateTime.now().difference(element.dateTime).inDays)
                            .where((element) => !(element.action))
                            .length) *
                    glassSize)
                .toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: FreshhAppTheme.fontName,
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: FreshhAppTheme.nearlyDarkBlue,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, bottom: 8),
          child: Text(
            'ml',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FreshhAppTheme.fontName,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              letterSpacing: -0.2,
              color: FreshhAppTheme.nearlyDarkBlue,
            ),
          ),
        ),
      ],
    );
  }

  int toML(double l) {
    return (l * 1000).toInt();
  }

  double toL(int ml) {
    return (ml.toDouble() / 1000.toDouble()).toDouble();
  }

  Widget getAnimationWaterContainer(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 8, top: 16),
        child: Container(
          width: 60,
          height: 160,
          decoration: BoxDecoration(
            color: HexColor('#E8EDFE'),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(80.0),
                bottomLeft: Radius.circular(80.0),
                bottomRight: Radius.circular(80.0),
                topRight: Radius.circular(80.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(color: FreshhAppTheme.grey.withOpacity(0.4), offset: const Offset(2, 2), blurRadius: 4),
            ],
          ),
          child: WaveView(
            percentageValue: (((doc.data!.historyOfWater!
                                .where((element) => 1 > DateTime.now().difference(element.dateTime).inDays)
                                .where((element) => element.action)
                                .length -
                            doc.data!.historyOfWater!
                                .where((element) => 1 > DateTime.now().difference(element.dateTime).inDays)
                                .where((element) => !(element.action))
                                .length) *
                        glassSize) /
                    toML(dailyGoal)) *
                100,
          ),
        ));
  }

  var counter = 0;

  onAdd() async {
    setState(() {
      counter += glassSize;
    });

    if (doc.exists) {
      doc.data!.historyOfWater?.add(HistoryOfWater(action: true, dateTime: DateTime.now()));
      ref.update(historyOfWater: doc.data!.historyOfWater);
    } else {
      ref.set(UserSkincareHistory(
          id: Authentication().auth.currentUser!.uid,
          historyOfWater: [HistoryOfWater(action: true, dateTime: DateTime.now())],
          dateTime: DateTime.now()));
    }
  }

  onSubtract() {
    setState(() {
      counter -= glassSize;
    });

    if (doc.exists) {
      doc.data!.historyOfWater?.add(HistoryOfWater(action: false, dateTime: DateTime.now()));
      ref.update(historyOfWater: doc.data!.historyOfWater);
    } else {
      ref.set(UserSkincareHistory(
          id: Authentication().auth.currentUser!.uid,
          historyOfWater: [HistoryOfWater(action: false, dateTime: DateTime.now())],
          dateTime: DateTime.now()));
    }
  }

  Widget getWaterControl(BuildContext context) {
    return SizedBox(
      width: 34,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FreshhAppTheme.nearlyWhite,
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(color: FreshhAppTheme.nearlyDarkBlue.withOpacity(0.4), offset: const Offset(4.0, 4.0), blurRadius: 8.0),
              ],
            ),
            child: InkWell(
              onTap: onAdd,
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.add,
                  color: FreshhAppTheme.nearlyDarkBlue,
                  size: 24,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            decoration: BoxDecoration(
              color: FreshhAppTheme.nearlyWhite,
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(color: FreshhAppTheme.nearlyDarkBlue.withOpacity(0.4), offset: const Offset(4.0, 4.0), blurRadius: 8.0),
              ],
            ),
            child: InkWell(
              onTap: onSubtract,
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.remove,
                  color: FreshhAppTheme.nearlyDarkBlue,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> getFirebaseData() async {
    doc = await ref.get();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait([getFirebaseData()]),
        builder: (context, _) {
          if (!(_.connectionState == ConnectionState.done)) {
            return const CustomProgressIndicator();
          }
          return AnimatedBuilder(
            animation: widget.mainScreenAnimationController!,
            builder: (BuildContext context, Widget? child) {
              return FadeTransition(
                opacity: widget.mainScreenAnimation!,
                child: Transform(
                  transform: Matrix4.translationValues(0.0, 30 * (1.0 - widget.mainScreenAnimation!.value), 0.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 18),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FreshhAppTheme.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                            topRight: Radius.circular(68.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: FreshhAppTheme.grey.withOpacity(0.2), offset: const Offset(1.1, 1.1), blurRadius: 10.0),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [getDrankValue(context), getDailyGoal(context)],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 16),
                                    child: Container(
                                      height: 2,
                                      decoration: const BoxDecoration(
                                        color: FreshhAppTheme.background,
                                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                      ),
                                    ),
                                  ),
                                  getLastDrink(context),
                                  getBottleEmpty(context)
                                ],
                              ),
                            ),
                            getWaterControl(context),
                            getAnimationWaterContainer(context)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
