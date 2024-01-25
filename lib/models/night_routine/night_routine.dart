import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'night_routine.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@firestoreSerializable
class NightRoutine {
  NightRoutine(this.skincaresListUseState,
      {required this.id,
        required this.skincaresListRef,
        required this.dateTime});

  @Id()
  final String id;
  final List<String> skincaresListRef;
  final List<bool> skincaresListUseState;

  final DateTime dateTime;

  factory NightRoutine.fromJson(Map<String, Object?> json) =>
      _$NightRoutineFromJson(json);

  Map<String, Object?> toJson() => _$NightRoutineToJson(this);
}

@Collection<NightRoutine>('NightRoutine')
final NightRoutineRef = NightRoutineCollectionReference();
