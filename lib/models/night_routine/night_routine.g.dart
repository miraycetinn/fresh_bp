// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'night_routine.dart';

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
abstract class NightRoutineCollectionReference
    implements
        NightRoutineQuery,
        FirestoreCollectionReference<NightRoutine, NightRoutineQuerySnapshot> {
  factory NightRoutineCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$NightRoutineCollectionReference;

  static NightRoutine fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return NightRoutine.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    NightRoutine value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<NightRoutine> get reference;

  @override
  NightRoutineDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<NightRoutineDocumentReference> add(NightRoutine value);
}

class _$NightRoutineCollectionReference extends _$NightRoutineQuery
    implements NightRoutineCollectionReference {
  factory _$NightRoutineCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$NightRoutineCollectionReference._(
      firestore.collection('NightRoutine').withConverter(
            fromFirestore: NightRoutineCollectionReference.fromFirestore,
            toFirestore: NightRoutineCollectionReference.toFirestore,
          ),
    );
  }

  _$NightRoutineCollectionReference._(
    CollectionReference<NightRoutine> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<NightRoutine> get reference =>
      super.reference as CollectionReference<NightRoutine>;

  @override
  NightRoutineDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return NightRoutineDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<NightRoutineDocumentReference> add(NightRoutine value) {
    return reference
        .add(value)
        .then((ref) => NightRoutineDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$NightRoutineCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class NightRoutineDocumentReference extends FirestoreDocumentReference<
    NightRoutine, NightRoutineDocumentSnapshot> {
  factory NightRoutineDocumentReference(
          DocumentReference<NightRoutine> reference) =
      _$NightRoutineDocumentReference;

  DocumentReference<NightRoutine> get reference;

  /// A reference to the [NightRoutineCollectionReference] containing this document.
  NightRoutineCollectionReference get parent {
    return _$NightRoutineCollectionReference(reference.firestore);
  }

  @override
  Stream<NightRoutineDocumentSnapshot> snapshots();

  @override
  Future<NightRoutineDocumentSnapshot> get([GetOptions? options]);

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

class _$NightRoutineDocumentReference extends FirestoreDocumentReference<
    NightRoutine,
    NightRoutineDocumentSnapshot> implements NightRoutineDocumentReference {
  _$NightRoutineDocumentReference(this.reference);

  @override
  final DocumentReference<NightRoutine> reference;

  /// A reference to the [NightRoutineCollectionReference] containing this document.
  NightRoutineCollectionReference get parent {
    return _$NightRoutineCollectionReference(reference.firestore);
  }

  @override
  Stream<NightRoutineDocumentSnapshot> snapshots() {
    return reference.snapshots().map(NightRoutineDocumentSnapshot._);
  }

  @override
  Future<NightRoutineDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NightRoutineDocumentSnapshot._);
  }

  @override
  Future<NightRoutineDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(NightRoutineDocumentSnapshot._);
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
        _$NightRoutineFieldMap['skincaresListRef']!:
            _$NightRoutinePerFieldToJson
                .skincaresListRef(skincaresListRef as List<String>),
      if (skincaresListRefFieldValue != null)
        _$NightRoutineFieldMap['skincaresListRef']!: skincaresListRefFieldValue,
      if (skincaresListUseState != _sentinel)
        _$NightRoutineFieldMap['skincaresListUseState']!:
            _$NightRoutinePerFieldToJson
                .skincaresListUseState(skincaresListUseState as List<bool>),
      if (skincaresListUseStateFieldValue != null)
        _$NightRoutineFieldMap['skincaresListUseState']!:
            skincaresListUseStateFieldValue,
      if (dateTime != _sentinel)
        _$NightRoutineFieldMap['dateTime']!:
            _$NightRoutinePerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$NightRoutineFieldMap['dateTime']!: dateTimeFieldValue,
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
        _$NightRoutineFieldMap['skincaresListRef']!:
            _$NightRoutinePerFieldToJson
                .skincaresListRef(skincaresListRef as List<String>),
      if (skincaresListRefFieldValue != null)
        _$NightRoutineFieldMap['skincaresListRef']!: skincaresListRefFieldValue,
      if (skincaresListUseState != _sentinel)
        _$NightRoutineFieldMap['skincaresListUseState']!:
            _$NightRoutinePerFieldToJson
                .skincaresListUseState(skincaresListUseState as List<bool>),
      if (skincaresListUseStateFieldValue != null)
        _$NightRoutineFieldMap['skincaresListUseState']!:
            skincaresListUseStateFieldValue,
      if (dateTime != _sentinel)
        _$NightRoutineFieldMap['dateTime']!:
            _$NightRoutinePerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$NightRoutineFieldMap['dateTime']!: dateTimeFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is NightRoutineDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class NightRoutineQuery
    implements QueryReference<NightRoutine, NightRoutineQuerySnapshot> {
  @override
  NightRoutineQuery limit(int limit);

  @override
  NightRoutineQuery limitToLast(int limit);

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
  NightRoutineQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
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
  NightRoutineQuery whereFieldPath(
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

  NightRoutineQuery whereDocumentId({
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
  NightRoutineQuery whereSkincaresListRef({
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
  NightRoutineQuery whereSkincaresListUseState({
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
  NightRoutineQuery whereDateTime({
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

  NightRoutineQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
  });

  NightRoutineQuery orderBySkincaresListRef({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
  });

  NightRoutineQuery orderBySkincaresListUseState({
    bool descending = false,
    List<bool> startAt,
    List<bool> startAfter,
    List<bool> endAt,
    List<bool> endBefore,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
  });

  NightRoutineQuery orderByDateTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
  });
}

class _$NightRoutineQuery
    extends QueryReference<NightRoutine, NightRoutineQuerySnapshot>
    implements NightRoutineQuery {
  _$NightRoutineQuery(
    this._collection, {
    required Query<NightRoutine> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<NightRoutineQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(NightRoutineQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<NightRoutineQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(NightRoutineQuerySnapshot._fromQuerySnapshot);
  }

  @override
  NightRoutineQuery limit(int limit) {
    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NightRoutineQuery limitToLast(int limit) {
    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  NightRoutineQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
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
    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NightRoutineQuery whereFieldPath(
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
    return _$NightRoutineQuery(
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

  NightRoutineQuery whereDocumentId({
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
    return _$NightRoutineQuery(
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

  NightRoutineQuery whereSkincaresListRef({
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
    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NightRoutineFieldMap['skincaresListRef']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$NightRoutinePerFieldToJson
                .skincaresListRef(isEqualTo as List<String>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$NightRoutinePerFieldToJson
                .skincaresListRef(isNotEqualTo as List<String>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListRef(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListRef(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListRef(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListRef(isGreaterThanOrEqualTo as List<String>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$NightRoutinePerFieldToJson
                    .skincaresListRef([arrayContains as String]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NightRoutinePerFieldToJson.skincaresListRef(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  NightRoutineQuery whereSkincaresListUseState({
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
    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NightRoutineFieldMap['skincaresListUseState']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$NightRoutinePerFieldToJson
                .skincaresListUseState(isEqualTo as List<bool>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$NightRoutinePerFieldToJson
                .skincaresListUseState(isNotEqualTo as List<bool>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListUseState(isLessThan as List<bool>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListUseState(isLessThanOrEqualTo as List<bool>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListUseState(isGreaterThan as List<bool>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListUseState(isGreaterThanOrEqualTo as List<bool>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$NightRoutinePerFieldToJson
                    .skincaresListUseState([arrayContains as bool]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$NightRoutinePerFieldToJson
                .skincaresListUseState(arrayContainsAny) as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  NightRoutineQuery whereDateTime({
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
    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NightRoutineFieldMap['dateTime']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$NightRoutinePerFieldToJson.dateTime(isEqualTo as DateTime)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$NightRoutinePerFieldToJson.dateTime(isNotEqualTo as DateTime)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$NightRoutinePerFieldToJson.dateTime(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$NightRoutinePerFieldToJson
                .dateTime(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$NightRoutinePerFieldToJson.dateTime(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$NightRoutinePerFieldToJson
                .dateTime(isGreaterThanOrEqualTo as DateTime)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$NightRoutinePerFieldToJson.dateTime(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$NightRoutinePerFieldToJson.dateTime(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NightRoutineQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
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

    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NightRoutineQuery orderBySkincaresListRef({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$NightRoutineFieldMap['skincaresListRef']!,
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

    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NightRoutineQuery orderBySkincaresListUseState({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$NightRoutineFieldMap['skincaresListUseState']!,
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

    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NightRoutineQuery orderByDateTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NightRoutineDocumentSnapshot? startAtDocument,
    NightRoutineDocumentSnapshot? endAtDocument,
    NightRoutineDocumentSnapshot? endBeforeDocument,
    NightRoutineDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NightRoutineFieldMap['dateTime']!, descending: descending);
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

    return _$NightRoutineQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$NightRoutineQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class NightRoutineDocumentSnapshot
    extends FirestoreDocumentSnapshot<NightRoutine> {
  NightRoutineDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<NightRoutine> snapshot;

  @override
  NightRoutineDocumentReference get reference {
    return NightRoutineDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final NightRoutine? data;
}

class NightRoutineQuerySnapshot extends FirestoreQuerySnapshot<NightRoutine,
    NightRoutineQueryDocumentSnapshot> {
  NightRoutineQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory NightRoutineQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<NightRoutine> snapshot,
  ) {
    final docs =
        snapshot.docs.map(NightRoutineQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        NightRoutineDocumentSnapshot._,
      );
    }).toList();

    return NightRoutineQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<NightRoutineDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    NightRoutineDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<NightRoutineDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<NightRoutine> snapshot;

  @override
  final List<NightRoutineQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<NightRoutineDocumentSnapshot>> docChanges;
}

class NightRoutineQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<NightRoutine>
    implements NightRoutineDocumentSnapshot {
  NightRoutineQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<NightRoutine> snapshot;

  @override
  final NightRoutine data;

  @override
  NightRoutineDocumentReference get reference {
    return NightRoutineDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NightRoutine _$NightRoutineFromJson(Map<String, dynamic> json) => NightRoutine(
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

const _$NightRoutineFieldMap = <String, String>{
  'id': 'id',
  'skincaresListRef': 'skincaresListRef',
  'skincaresListUseState': 'skincaresListUseState',
  'dateTime': 'dateTime',
};

// ignore: unused_element
abstract class _$NightRoutinePerFieldToJson {
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

Map<String, dynamic> _$NightRoutineToJson(NightRoutine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skincaresListRef': instance.skincaresListRef,
      'skincaresListUseState': instance.skincaresListUseState,
      'dateTime': const FirestoreDateTimeConverter().toJson(instance.dateTime),
    };
