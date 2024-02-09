
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'history_of_night.g.dart';
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class HistoryOfNight {
  final bool action;
  final DateTime dateTime;
  final String skincareListRef;
  factory HistoryOfNight.fromJson(Map<String, Object?> json) => _$HistoryOfNightFromJson(json);

  HistoryOfNight({required this.action, required this.dateTime, required this.skincareListRef});

  Map<String, Object?> toJson() => _$HistoryOfNightToJson(this);

}