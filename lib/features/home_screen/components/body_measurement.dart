import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freshh/fitness_app_theme.dart';
import 'package:freshh/models/globals.dart';

class BodyMeasurementView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  BodyMeasurementView({Key? key, this.animationController, this.animation})
      : super(key: key);

  double weight = BodyMeasurement.weight;

  Widget getWeight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 3),
          child: Text(
            weight.toString(),
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
            'Ibs',
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

  int height = BodyMeasurement.height;

  Widget getHeight(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$height cm',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: FitnessAppTheme.fontName,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              letterSpacing: -0.2,
              color: FitnessAppTheme.darkText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              'Height',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FitnessAppTheme.fontName,
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: FitnessAppTheme.grey.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double calculateBMI(weight, height) {
    return weight / pow(height / 100, 2);
  }

  Widget getBMI(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${calculateBMI(weight, height).toStringAsFixed(1)} BMI',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: FitnessAppTheme.fontName,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: -0.2,
                  color: FitnessAppTheme.darkText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  'Overweight',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FitnessAppTheme.fontName,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
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

  int bodyFat = BodyMeasurement.bodyFat;

  Widget getBodyFat(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$bodyFat%',
                style: const TextStyle(
                  fontFamily: FitnessAppTheme.fontName,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: -0.2,
                  color: FitnessAppTheme.darkText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  'Body fat',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FitnessAppTheme.fontName,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
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

  DateTime lastModificationTime = DateTime.now();

  Widget getLastModificationTime(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.access_time,
          color: FitnessAppTheme.grey.withOpacity(0.5),
          size: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            '${lastModificationTime.year}/${lastModificationTime.month}/${lastModificationTime.day}  ${lastModificationTime.hour}:${lastModificationTime.minute}',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
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
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 4, bottom: 8, top: 16),
                            child: Text(
                              'Weight',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: FitnessAppTheme.fontName,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  letterSpacing: -0.1,
                                  color: FitnessAppTheme.darkText),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              getWeight(context),
                              getLastModificationTime(context)
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 8, bottom: 8),
                      child: Container(
                        height: 2,
                        decoration: const BoxDecoration(
                          color: FitnessAppTheme.background,
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 8, bottom: 16),
                      child: Row(
                        children: [
                          getHeight(context),
                          getBMI(context),
                          getBodyFat(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
