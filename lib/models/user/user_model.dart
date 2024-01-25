import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

// This doesn't exist yet...! See "Next Steps"
part 'user_model.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class UserModel {
  UserModel({
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

  factory UserModel.fromJson(Map<String, Object?> json) => _$UserModelFromJson(json);
  Map<String, Object?> toJson() => _$UserModelToJson(this);

}
@Collection<UserModel>('Users')
final usersRef = UserModelCollectionReference();