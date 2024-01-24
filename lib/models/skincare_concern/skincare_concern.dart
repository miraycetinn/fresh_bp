import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

// This doesn't exist yet...! See "Next Steps"
part 'skincare_concern.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class SkincareConcern {
  SkincareConcern({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
    required this.password
  });
  @Id()
  final String id;
  final String name;
  final String surname;
  final String email;
  final String password;

  factory SkincareConcern.fromJson(Map<String, Object?> json) => _$SkincareConcernFromJson(json);
  Map<String, Object?> toJson() => _$SkincareConcernToJson(this);

}
@Collection<SkincareConcern>('SkincareConcern')
final SkincareConcernsRef = SkincareConcernCollectionReference();