import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'skincares_list_data.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class SkincareListData {

  SkincareListData({
    required this.id,
    required this.imagePath ,
    required this.titleTxt ,

    this.isUsed =false,
    required this.startColor ,
    required this.endColor,
    required this.dateTime
  });

   @Id()
  final String id;
  final String imagePath;
  final String titleTxt;
  final String startColor;
  final String endColor;
  final DateTime dateTime;

  bool isUsed  = false;

  factory SkincareListData.fromJson(Map<String, Object?> json) => _$SkincareListDataFromJson(json);
  Map<String, Object?> toJson() => _$SkincareListDataToJson(this);

}
@Collection<SkincareListData>('SkincareListData')
final SkincareListDataRef = SkincareListDataCollectionReference();