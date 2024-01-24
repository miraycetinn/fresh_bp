import 'package:flutter/material.dart';
import 'package:freshh/features/home_screen/components/wave_view.dart';
import 'package:freshh/fitness_app_theme.dart';
import 'package:freshh/main.dart';
import 'package:freshh/models/globals.dart';

class WaterView extends StatefulWidget {
  const WaterView(
      {Key? key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);

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

  int glassSize = Water.glassSize;

  bool bottleEmpty = Water.bottleEmpty;

  Widget getBottleEmpty(BuildContext context) {
    return bottleEmpty
        ? Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset('assets/fitness_app/bell.png'),
                ),
                Flexible(
                  child: Text(
                    'Your bottle is empty, refill it!.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: FitnessAppTheme.fontName,
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

  DateTime lastDrink = Water.lastDrink;

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
                  color: FitnessAppTheme.grey.withOpacity(0.5),
                  size: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  'Last drink ${lastDrink.hour}:${lastDrink.minute}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FitnessAppTheme.fontName,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 0.0,
                    color: FitnessAppTheme.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  double dailyGoal = Water.dailyGoal;

  Widget getDailyGoal(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 2, bottom: 14),
      child: Text(
        'of daily goal ${dailyGoal}L',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: FitnessAppTheme.fontName,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.0,
          color: FitnessAppTheme.darkText,
        ),
      ),
    );
  }

  int drankValue = Water.drankValue;

  Widget getDrankValue(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 3),
          child: Text(
            drankValue.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: FitnessAppTheme.fontName,
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: FitnessAppTheme.nearlyDarkBlue,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8, bottom: 8),
          child: Text(
            'ml',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FitnessAppTheme.fontName,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              letterSpacing: -0.2,
              color: FitnessAppTheme.nearlyDarkBlue,
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
              BoxShadow(
                  color: FitnessAppTheme.grey.withOpacity(0.4),
                  offset: const Offset(2, 2),
                  blurRadius: 4),
            ],
          ),
          child: WaveView(
            percentageValue: (drankValue / toML(dailyGoal)) * 100,
          ),
        ));
  }

  onAdd() {
    setState(() {drankValue+=glassSize;});
  }

  onSubtract() {
    setState(() {drankValue-=glassSize;});
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
              color: FitnessAppTheme.nearlyWhite,
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: FitnessAppTheme.nearlyDarkBlue.withOpacity(0.4),
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 8.0),
              ],
            ),
            child: InkWell(
              onTap: onAdd,
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.add,
                  color: FitnessAppTheme.nearlyDarkBlue,
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
              color: FitnessAppTheme.nearlyWhite,
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: FitnessAppTheme.nearlyDarkBlue.withOpacity(0.4),
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 8.0),
              ],
            ),
            child: InkWell(
              onTap: onSubtract,
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.remove,
                  color: FitnessAppTheme.nearlyDarkBlue,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
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
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: FitnessAppTheme.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(68.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: FitnessAppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 16, right: 16, bottom: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getDrankValue(context),
                                getDailyGoal(context)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 4, right: 4, top: 8, bottom: 16),
                              child: Container(
                                height: 2,
                                decoration: const BoxDecoration(
                                  color: FitnessAppTheme.background,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
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
  }
}
