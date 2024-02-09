
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'history_of_water.g.dart';
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class HistoryOfWater {
  final bool action;
  final DateTime dateTime;
  factory HistoryOfWater.fromJson(Map<String, Object?> json) => _$HistoryOfWaterFromJson(json);

  HistoryOfWater({required this.action, required this.dateTime});

  Map<String, Object?> toJson() => _$HistoryOfWaterToJson(this);

}