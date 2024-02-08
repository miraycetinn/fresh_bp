// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'morning_routine.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MorningRoutineCollectionReference
    implements
        MorningRoutineQuery,
        FirestoreCollectionReference<MorningRoutine,
            MorningRoutineQuerySnapshot> {
  factory MorningRoutineCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MorningRoutineCollectionReference;

  static MorningRoutine fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return MorningRoutine.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    MorningRoutine value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<MorningRoutine> get reference;

  @override
  MorningRoutineDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MorningRoutineDocumentReference> add(MorningRoutine value);
}

class _$MorningRoutineCollectionReference extends _$MorningRoutineQuery
    implements MorningRoutineCollectionReference {
  factory _$MorningRoutineCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MorningRoutineCollectionReference._(
      firestore.collection('MorningRoutine').withConverter(
            fromFirestore: MorningRoutineCollectionReference.fromFirestore,
            toFirestore: MorningRoutineCollectionReference.toFirestore,
          ),
    );
  }

  _$MorningRoutineCollectionReference._(
    CollectionReference<MorningRoutine> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<MorningRoutine> get reference =>
      super.reference as CollectionReference<MorningRoutine>;

  @override
  MorningRoutineDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MorningRoutineDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MorningRoutineDocumentReference> add(MorningRoutine value) {
    return reference
        .add(value)
        .then((ref) => MorningRoutineDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MorningRoutineCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MorningRoutineDocumentReference
    extends FirestoreDocumentReference<MorningRoutine,
        MorningRoutineDocumentSnapshot> {
  factory MorningRoutineDocumentReference(
          DocumentReference<MorningRoutine> reference) =
      _$MorningRoutineDocumentReference;

  DocumentReference<MorningRoutine> get reference;

  /// A reference to the [MorningRoutineCollectionReference] containing this document.
  MorningRoutineCollectionReference get parent {
    return _$MorningRoutineCollectionReference(reference.firestore);
  }

  @override
  Stream<MorningRoutineDocumentSnapshot> snapshots();

  @override
  Future<MorningRoutineDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    List<String> skincaresListRef,
    FieldValue skincaresListRefFieldValue,
    List<bool> skincaresListUseState,
    FieldValue skincaresListUseStateFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    List<String> skincaresListRef,
    FieldValue skincaresListRefFieldValue,
    List<bool> skincaresListUseState,
    FieldValue skincaresListUseStateFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
  });
}

class _$MorningRoutineDocumentReference extends FirestoreDocumentReference<
    MorningRoutine,
    MorningRoutineDocumentSnapshot> implements MorningRoutineDocumentReference {
  _$MorningRoutineDocumentReference(this.reference);

  @override
  final DocumentReference<MorningRoutine> reference;

  /// A reference to the [MorningRoutineCollectionReference] containing this document.
  MorningRoutineCollectionReference get parent {
    return _$MorningRoutineCollectionReference(reference.firestore);
  }

  @override
  Stream<MorningRoutineDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MorningRoutineDocumentSnapshot._);
  }

  @override
  Future<MorningRoutineDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MorningRoutineDocumentSnapshot._);
  }

  @override
  Future<MorningRoutineDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(MorningRoutineDocumentSnapshot._);
  }

  Future<void> update({
    Object? skincaresListRef = _sentinel,
    FieldValue? skincaresListRefFieldValue,
    Object? skincaresListUseState = _sentinel,
    FieldValue? skincaresListUseStateFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
  }) async {
    assert(
      skincaresListRef == _sentinel || skincaresListRefFieldValue == null,
      "Cannot specify both skincaresListRef and skincaresListRefFieldValue",
    );
    assert(
      skincaresListUseState == _sentinel ||
          skincaresListUseStateFieldValue == null,
      "Cannot specify both skincaresListUseState and skincaresListUseStateFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    final json = {
      if (skincaresListRef != _sentinel)
        _$MorningRoutineFieldMap['skincaresListRef']!:
            _$MorningRoutinePerFieldToJson
                .skincaresListRef(skincaresListRef as List<String>),
      if (skincaresListRefFieldValue != null)
        _$MorningRoutineFieldMap['skincaresListRef']!:
            skincaresListRefFieldValue,
      if (skincaresListUseState != _sentinel)
        _$MorningRoutineFieldMap['skincaresListUseState']!:
            _$MorningRoutinePerFieldToJson
                .skincaresListUseState(skincaresListUseState as List<bool>),
      if (skincaresListUseStateFieldValue != null)
        _$MorningRoutineFieldMap['skincaresListUseState']!:
            skincaresListUseStateFieldValue,
      if (dateTime != _sentinel)
        _$MorningRoutineFieldMap['dateTime']!:
            _$MorningRoutinePerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$MorningRoutineFieldMap['dateTime']!: dateTimeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? skincaresListRef = _sentinel,
    FieldValue? skincaresListRefFieldValue,
    Object? skincaresListUseState = _sentinel,
    FieldValue? skincaresListUseStateFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
  }) {
    assert(
      skincaresListRef == _sentinel || skincaresListRefFieldValue == null,
      "Cannot specify both skincaresListRef and skincaresListRefFieldValue",
    );
    assert(
      skincaresListUseState == _sentinel ||
          skincaresListUseStateFieldValue == null,
      "Cannot specify both skincaresListUseState and skincaresListUseStateFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    final json = {
      if (skincaresListRef != _sentinel)
        _$MorningRoutineFieldMap['skincaresListRef']!:
            _$MorningRoutinePerFieldToJson
                .skincaresListRef(skincaresListRef as List<String>),
      if (skincaresListRefFieldValue != null)
        _$MorningRoutineFieldMap['skincaresListRef']!:
            skincaresListRefFieldValue,
      if (skincaresListUseState != _sentinel)
        _$MorningRoutineFieldMap['skincaresListUseState']!:
            _$MorningRoutinePerFieldToJson
                .skincaresListUseState(skincaresListUseState as List<bool>),
      if (skincaresListUseStateFieldValue != null)
        _$MorningRoutineFieldMap['skincaresListUseState']!:
            skincaresListUseStateFieldValue,
      if (dateTime != _sentinel)
        _$MorningRoutineFieldMap['dateTime']!:
            _$MorningRoutinePerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$MorningRoutineFieldMap['dateTime']!: dateTimeFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MorningRoutineDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MorningRoutineQuery
    implements QueryReference<MorningRoutine, MorningRoutineQuerySnapshot> {
  @override
  MorningRoutineQuery limit(int limit);

  @override
  MorningRoutineQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  MorningRoutineQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  MorningRoutineQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  MorningRoutineQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MorningRoutineQuery whereSkincaresListRef({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  MorningRoutineQuery whereSkincaresListUseState({
    List<bool>? isEqualTo,
    List<bool>? isNotEqualTo,
    List<bool>? isLessThan,
    List<bool>? isLessThanOrEqualTo,
    List<bool>? isGreaterThan,
    List<bool>? isGreaterThanOrEqualTo,
    bool? isNull,
    bool? arrayContains,
    List<bool>? arrayContainsAny,
  });
  MorningRoutineQuery whereDateTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });

  MorningRoutineQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  });

  MorningRoutineQuery orderBySkincaresListRef({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  });

  MorningRoutineQuery orderBySkincaresListUseState({
    bool descending = false,
    List<bool> startAt,
    List<bool> startAfter,
    List<bool> endAt,
    List<bool> endBefore,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  });

  MorningRoutineQuery orderByDateTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  });
}

class _$MorningRoutineQuery
    extends QueryReference<MorningRoutine, MorningRoutineQuerySnapshot>
    implements MorningRoutineQuery {
  _$MorningRoutineQuery(
    this._collection, {
    required Query<MorningRoutine> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MorningRoutineQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(MorningRoutineQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MorningRoutineQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(MorningRoutineQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MorningRoutineQuery limit(int limit) {
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MorningRoutineQuery limitToLast(int limit) {
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  MorningRoutineQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MorningRoutineQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MorningRoutineQuery whereDocumentId({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MorningRoutineQuery whereSkincaresListRef({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    Object? arrayContains = notSetQueryParam,
    List<String>? arrayContainsAny,
  }) {
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MorningRoutineFieldMap['skincaresListRef']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$MorningRoutinePerFieldToJson
                .skincaresListRef(isEqualTo as List<String>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$MorningRoutinePerFieldToJson
                .skincaresListRef(isNotEqualTo as List<String>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListRef(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListRef(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListRef(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListRef(isGreaterThanOrEqualTo as List<String>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$MorningRoutinePerFieldToJson
                    .skincaresListRef([arrayContains as String]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$MorningRoutinePerFieldToJson.skincaresListRef(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MorningRoutineQuery whereSkincaresListUseState({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    Object? arrayContains = notSetQueryParam,
    List<bool>? arrayContainsAny,
  }) {
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MorningRoutineFieldMap['skincaresListUseState']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$MorningRoutinePerFieldToJson
                .skincaresListUseState(isEqualTo as List<bool>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$MorningRoutinePerFieldToJson
                .skincaresListUseState(isNotEqualTo as List<bool>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListUseState(isLessThan as List<bool>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListUseState(isLessThanOrEqualTo as List<bool>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListUseState(isGreaterThan as List<bool>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListUseState(isGreaterThanOrEqualTo as List<bool>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$MorningRoutinePerFieldToJson
                    .skincaresListUseState([arrayContains as bool]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$MorningRoutinePerFieldToJson
                .skincaresListUseState(arrayContainsAny) as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MorningRoutineQuery whereDateTime({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MorningRoutineFieldMap['dateTime']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$MorningRoutinePerFieldToJson.dateTime(isEqualTo as DateTime)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$MorningRoutinePerFieldToJson.dateTime(isNotEqualTo as DateTime)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$MorningRoutinePerFieldToJson.dateTime(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MorningRoutinePerFieldToJson
                .dateTime(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MorningRoutinePerFieldToJson.dateTime(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MorningRoutinePerFieldToJson
                .dateTime(isGreaterThanOrEqualTo as DateTime)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$MorningRoutinePerFieldToJson.dateTime(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$MorningRoutinePerFieldToJson.dateTime(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MorningRoutineQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MorningRoutineQuery orderBySkincaresListRef({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$MorningRoutineFieldMap['skincaresListRef']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MorningRoutineQuery orderBySkincaresListUseState({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$MorningRoutineFieldMap['skincaresListUseState']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MorningRoutineQuery orderByDateTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MorningRoutineDocumentSnapshot? startAtDocument,
    MorningRoutineDocumentSnapshot? endAtDocument,
    MorningRoutineDocumentSnapshot? endBeforeDocument,
    MorningRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MorningRoutineFieldMap['dateTime']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MorningRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MorningRoutineQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MorningRoutineDocumentSnapshot
    extends FirestoreDocumentSnapshot<MorningRoutine> {
  MorningRoutineDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<MorningRoutine> snapshot;

  @override
  MorningRoutineDocumentReference get reference {
    return MorningRoutineDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final MorningRoutine? data;
}

class MorningRoutineQuerySnapshot extends FirestoreQuerySnapshot<MorningRoutine,
    MorningRoutineQueryDocumentSnapshot> {
  MorningRoutineQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MorningRoutineQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<MorningRoutine> snapshot,
  ) {
    final docs =
        snapshot.docs.map(MorningRoutineQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MorningRoutineDocumentSnapshot._,
      );
    }).toList();

    return MorningRoutineQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MorningRoutineDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MorningRoutineDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MorningRoutineDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<MorningRoutine> snapshot;

  @override
  final List<MorningRoutineQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MorningRoutineDocumentSnapshot>>
      docChanges;
}

class MorningRoutineQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<MorningRoutine>
    implements MorningRoutineDocumentSnapshot {
  MorningRoutineQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<MorningRoutine> snapshot;

  @override
  final MorningRoutine data;

  @override
  MorningRoutineDocumentReference get reference {
    return MorningRoutineDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MorningRoutine _$MorningRoutineFromJson(Map<String, dynamic> json) =>
    MorningRoutine(
      (json['skincaresListUseState'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
      id: json['id'] as String,
      skincaresListRef: (json['skincaresListRef'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateTime: const FirestoreDateTimeConverter()
          .fromJson(json['dateTime'] as Timestamp),
    );

const _$MorningRoutineFieldMap = <String, String>{
  'id': 'id',
  'skincaresListRef': 'skincaresListRef',
  'skincaresListUseState': 'skincaresListUseState',
  'dateTime': 'dateTime',
};

// ignore: unused_element
abstract class _$MorningRoutinePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? skincaresListRef(List<String> instance) => instance;
  // ignore: unused_element
  static Object? skincaresListUseState(List<bool> instance) => instance;
  // ignore: unused_element
  static Object? dateTime(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$MorningRoutineToJson(MorningRoutine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skincaresListRef': instance.skincaresListRef,
      'skincaresListUseState': instance.skincaresListUseState,
      'dateTime': const FirestoreDateTimeConverter().toJson(instance.dateTime),
    };
