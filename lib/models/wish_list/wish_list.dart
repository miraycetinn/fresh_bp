import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wish_list.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class WishList {
  WishList({required this.id, required this.skincareProductRef, required this.dateTime});

  @Id()
  final String id;
  final List<String> skincareProductRef;
  final DateTime dateTime;

  factory WishList.fromJson(Map<String, Object?> json) => _$WishListFromJson(json);

  Map<String, Object?> toJson() => _$WishListToJson(this);
}

@Collection<WishList>('WishList')
final WishListRef = WishListCollectionReference();
