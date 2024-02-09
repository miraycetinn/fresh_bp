import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

// This doesn't exist yet...! See "Next Steps"
part 'skincare_product.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class SkincareProduct {
  SkincareProduct({
    required this.brand,
    required this.price,
    required this.routine,
    required this.perWeek,
    required this.star,
    required this.photo,
    required this.description,
    required this.id,
    required this.name,
  });

  @Id()
  final String id;
  final String name;
  final String brand;
  final double price;
  final String routine;
  final int perWeek;
  final double star;
  final String photo;
  final String description;

  factory SkincareProduct.fromJson(Map<String, Object?> json) =>
      _$SkincareProductFromJson(json);

  Map<String, Object?> toJson() => _$SkincareProductToJson(this);
}

@Collection<SkincareProduct>('SkinCareProduct')
final SkincareProductRef = SkincareProductCollectionReference();
