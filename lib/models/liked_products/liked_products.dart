import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'liked_products.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class LikedProducts {
  LikedProducts({required this.id, required this.skincareProductRef, required this.dateTime});

  @Id()
  final String id;
  final List<String> skincareProductRef;
  final DateTime dateTime;

  factory LikedProducts.fromJson(Map<String, Object?> json) => _$LikedProductsFromJson(json);

  Map<String, Object?> toJson() => _$LikedProductsToJson(this);
}

@Collection<LikedProducts>('LikedProducts')
final LikedProductsRef = LikedProductsCollectionReference();
