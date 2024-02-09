import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shopping_cart.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class ShoppingCart {
  ShoppingCart({required this.id, required this.skincareProductRef, required this.dateTime});

  @Id()
  final String id;
  final List<String> skincareProductRef;
  final DateTime dateTime;

  factory ShoppingCart.fromJson(Map<String, Object?> json) => _$ShoppingCartFromJson(json);

  Map<String, Object?> toJson() => _$ShoppingCartToJson(this);
}

@Collection<ShoppingCart>('ShoppingCart')
final ShoppingCartRef = ShoppingCartCollectionReference();
