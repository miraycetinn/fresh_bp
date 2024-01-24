import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'skincare_history_data.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class SkincareHistoryData {

  SkincareHistoryData({
    required this.id,
    required this.skincareListDataReferance ,
    required this.isUsed ,
    required this.dateTime
  });

  @Id()
  final String id;
  final String skincareListDataReferance;
  final bool isUsed;
  final DateTime dateTime;

  factory SkincareHistoryData.fromJson(Map<String, Object?> json) => _$SkincareHistoryDataFromJson(json);
  Map<String, Object?> toJson() => _$SkincareHistoryDataToJson(this);

}
@Collection<SkincareHistoryData>('SkincareHistoryData')
final SkincareHistoryDataRef = SkincareHistoryDataCollectionReference();