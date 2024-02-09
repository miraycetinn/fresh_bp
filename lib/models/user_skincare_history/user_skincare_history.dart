import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freshh/models/history_of_morning/history_of_morning.dart';
import 'package:freshh/models/history_of_night/history_of_night.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:freshh/models/history_of_water/history_of_water.dart';

part 'user_skincare_history.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class UserSkincareHistory {

  @Id()
  final String id;
  @JsonKey(defaultValue: [])
  final List<HistoryOfMorning>? historyOfMorning;
  @JsonKey(defaultValue: [])

  final List<HistoryOfNight>? historyOfNight;
  @JsonKey(defaultValue: [])

  final List<HistoryOfWater>? historyOfWater;

  final DateTime dateTime;


  factory UserSkincareHistory.fromJson(Map<String, Object?> json) => _$UserSkincareHistoryFromJson(json);


  UserSkincareHistory(
      {required this.id,  this.historyOfMorning,  this.historyOfNight,  this.historyOfWater,
        required this.dateTime});

  Map<String, Object?> toJson() => _$UserSkincareHistoryToJson(this);
}

@Collection<UserSkincareHistory>('UserSkincareHistory')
final UserSkincareHistoryRef = UserSkincareHistoryCollectionReference();

