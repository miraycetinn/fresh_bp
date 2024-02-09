// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skincare_history_data.dart';

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
abstract class SkincareHistoryDataCollectionReference
    implements
        SkincareHistoryDataQuery,
        FirestoreCollectionReference<SkincareHistoryData,
            SkincareHistoryDataQuerySnapshot> {
  factory SkincareHistoryDataCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SkincareHistoryDataCollectionReference;

  static SkincareHistoryData fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SkincareHistoryData.fromJson(
        {'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    SkincareHistoryData value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<SkincareHistoryData> get reference;

  @override
  SkincareHistoryDataDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SkincareHistoryDataDocumentReference> add(SkincareHistoryData value);
}

class _$SkincareHistoryDataCollectionReference
    extends _$SkincareHistoryDataQuery
    implements SkincareHistoryDataCollectionReference {
  factory _$SkincareHistoryDataCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SkincareHistoryDataCollectionReference._(
      firestore.collection('SkincareHistoryData').withConverter(
            fromFirestore: SkincareHistoryDataCollectionReference.fromFirestore,
            toFirestore: SkincareHistoryDataCollectionReference.toFirestore,
          ),
    );
  }

  _$SkincareHistoryDataCollectionReference._(
    CollectionReference<SkincareHistoryData> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<SkincareHistoryData> get reference =>
      super.reference as CollectionReference<SkincareHistoryData>;

  @override
  SkincareHistoryDataDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SkincareHistoryDataDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SkincareHistoryDataDocumentReference> add(SkincareHistoryData value) {
    return reference
        .add(value)
        .then((ref) => SkincareHistoryDataDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SkincareHistoryDataCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SkincareHistoryDataDocumentReference
    extends FirestoreDocumentReference<SkincareHistoryData,
        SkincareHistoryDataDocumentSnapshot> {
  factory SkincareHistoryDataDocumentReference(
          DocumentReference<SkincareHistoryData> reference) =
      _$SkincareHistoryDataDocumentReference;

  DocumentReference<SkincareHistoryData> get reference;

  /// A reference to the [SkincareHistoryDataCollectionReference] containing this document.
  SkincareHistoryDataCollectionReference get parent {
    return _$SkincareHistoryDataCollectionReference(reference.firestore);
  }

  @override
  Stream<SkincareHistoryDataDocumentSnapshot> snapshots();

  @override
  Future<SkincareHistoryDataDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String skincareListDataReferance,
    FieldValue skincareListDataReferanceFieldValue,
    bool isUsed,
    FieldValue isUsedFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String skincareListDataReferance,
    FieldValue skincareListDataReferanceFieldValue,
    bool isUsed,
    FieldValue isUsedFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
  });
}

class _$SkincareHistoryDataDocumentReference extends FirestoreDocumentReference<
        SkincareHistoryData, SkincareHistoryDataDocumentSnapshot>
    implements SkincareHistoryDataDocumentReference {
  _$SkincareHistoryDataDocumentReference(this.reference);

  @override
  final DocumentReference<SkincareHistoryData> reference;

  /// A reference to the [SkincareHistoryDataCollectionReference] containing this document.
  SkincareHistoryDataCollectionReference get parent {
    return _$SkincareHistoryDataCollectionReference(reference.firestore);
  }

  @override
  Stream<SkincareHistoryDataDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SkincareHistoryDataDocumentSnapshot._);
  }

  @override
  Future<SkincareHistoryDataDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SkincareHistoryDataDocumentSnapshot._);
  }

  @override
  Future<SkincareHistoryDataDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(SkincareHistoryDataDocumentSnapshot._);
  }

  Future<void> update({
    Object? skincareListDataReferance = _sentinel,
    FieldValue? skincareListDataReferanceFieldValue,
    Object? isUsed = _sentinel,
    FieldValue? isUsedFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
  }) async {
    assert(
      skincareListDataReferance == _sentinel ||
          skincareListDataReferanceFieldValue == null,
      "Cannot specify both skincareListDataReferance and skincareListDataReferanceFieldValue",
    );
    assert(
      isUsed == _sentinel || isUsedFieldValue == null,
      "Cannot specify both isUsed and isUsedFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    final json = {
      if (skincareListDataReferance != _sentinel)
        _$SkincareHistoryDataFieldMap['skincareListDataReferance']!:
            _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(skincareListDataReferance as String),
      if (skincareListDataReferanceFieldValue != null)
        _$SkincareHistoryDataFieldMap['skincareListDataReferance']!:
            skincareListDataReferanceFieldValue,
      if (isUsed != _sentinel)
        _$SkincareHistoryDataFieldMap['isUsed']!:
            _$SkincareHistoryDataPerFieldToJson.isUsed(isUsed as bool),
      if (isUsedFieldValue != null)
        _$SkincareHistoryDataFieldMap['isUsed']!: isUsedFieldValue,
      if (dateTime != _sentinel)
        _$SkincareHistoryDataFieldMap['dateTime']!:
            _$SkincareHistoryDataPerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$SkincareHistoryDataFieldMap['dateTime']!: dateTimeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? skincareListDataReferance = _sentinel,
    FieldValue? skincareListDataReferanceFieldValue,
    Object? isUsed = _sentinel,
    FieldValue? isUsedFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
  }) {
    assert(
      skincareListDataReferance == _sentinel ||
          skincareListDataReferanceFieldValue == null,
      "Cannot specify both skincareListDataReferance and skincareListDataReferanceFieldValue",
    );
    assert(
      isUsed == _sentinel || isUsedFieldValue == null,
      "Cannot specify both isUsed and isUsedFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    final json = {
      if (skincareListDataReferance != _sentinel)
        _$SkincareHistoryDataFieldMap['skincareListDataReferance']!:
            _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(skincareListDataReferance as String),
      if (skincareListDataReferanceFieldValue != null)
        _$SkincareHistoryDataFieldMap['skincareListDataReferance']!:
            skincareListDataReferanceFieldValue,
      if (isUsed != _sentinel)
        _$SkincareHistoryDataFieldMap['isUsed']!:
            _$SkincareHistoryDataPerFieldToJson.isUsed(isUsed as bool),
      if (isUsedFieldValue != null)
        _$SkincareHistoryDataFieldMap['isUsed']!: isUsedFieldValue,
      if (dateTime != _sentinel)
        _$SkincareHistoryDataFieldMap['dateTime']!:
            _$SkincareHistoryDataPerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$SkincareHistoryDataFieldMap['dateTime']!: dateTimeFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SkincareHistoryDataDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SkincareHistoryDataQuery
    implements
        QueryReference<SkincareHistoryData, SkincareHistoryDataQuerySnapshot> {
  @override
  SkincareHistoryDataQuery limit(int limit);

  @override
  SkincareHistoryDataQuery limitToLast(int limit);

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
  SkincareHistoryDataQuery whereFieldPath(
    Object fieldPath, {
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

  SkincareHistoryDataQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  SkincareHistoryDataQuery whereSkincareListDataReferance({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  SkincareHistoryDataQuery whereIsUsed({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  SkincareHistoryDataQuery whereDateTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

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
  SkincareHistoryDataQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  });

  SkincareHistoryDataQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  });

  SkincareHistoryDataQuery orderBySkincareListDataReferance({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  });

  SkincareHistoryDataQuery orderByIsUsed({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  });

  SkincareHistoryDataQuery orderByDateTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  });
}

class _$SkincareHistoryDataQuery extends QueryReference<SkincareHistoryData,
    SkincareHistoryDataQuerySnapshot> implements SkincareHistoryDataQuery {
  _$SkincareHistoryDataQuery(
    this._collection, {
    required Query<SkincareHistoryData> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SkincareHistoryDataQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SkincareHistoryDataQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SkincareHistoryDataQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SkincareHistoryDataQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SkincareHistoryDataQuery limit(int limit) {
    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery limitToLast(int limit) {
    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
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
    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery whereSkincareListDataReferance({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareHistoryDataFieldMap['skincareListDataReferance']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareHistoryDataPerFieldToJson
                .skincareListDataReferance(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) =>
            _$SkincareHistoryDataPerFieldToJson.skincareListDataReferance(e)),
        whereNotIn: whereNotIn?.map((e) =>
            _$SkincareHistoryDataPerFieldToJson.skincareListDataReferance(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery whereIsUsed({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareHistoryDataFieldMap['isUsed']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SkincareHistoryDataPerFieldToJson.isUsed(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SkincareHistoryDataPerFieldToJson.isUsed(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$SkincareHistoryDataPerFieldToJson.isUsed(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareHistoryDataPerFieldToJson
                .isUsed(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareHistoryDataPerFieldToJson.isUsed(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareHistoryDataPerFieldToJson
                .isUsed(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn:
            whereIn?.map((e) => _$SkincareHistoryDataPerFieldToJson.isUsed(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$SkincareHistoryDataPerFieldToJson.isUsed(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery whereDateTime({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareHistoryDataFieldMap['dateTime']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SkincareHistoryDataPerFieldToJson
                .dateTime(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SkincareHistoryDataPerFieldToJson
                .dateTime(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$SkincareHistoryDataPerFieldToJson
                .dateTime(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareHistoryDataPerFieldToJson
                .dateTime(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareHistoryDataPerFieldToJson
                .dateTime(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareHistoryDataPerFieldToJson
                .dateTime(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn
            ?.map((e) => _$SkincareHistoryDataPerFieldToJson.dateTime(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$SkincareHistoryDataPerFieldToJson.dateTime(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
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

    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
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

    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery orderBySkincareListDataReferance({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareHistoryDataFieldMap['skincareListDataReferance']!,
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

    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery orderByIsUsed({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareHistoryDataFieldMap['isUsed']!,
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

    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareHistoryDataQuery orderByDateTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareHistoryDataDocumentSnapshot? startAtDocument,
    SkincareHistoryDataDocumentSnapshot? endAtDocument,
    SkincareHistoryDataDocumentSnapshot? endBeforeDocument,
    SkincareHistoryDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareHistoryDataFieldMap['dateTime']!,
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

    return _$SkincareHistoryDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SkincareHistoryDataQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SkincareHistoryDataDocumentSnapshot
    extends FirestoreDocumentSnapshot<SkincareHistoryData> {
  SkincareHistoryDataDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SkincareHistoryData> snapshot;

  @override
  SkincareHistoryDataDocumentReference get reference {
    return SkincareHistoryDataDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SkincareHistoryData? data;
}

class SkincareHistoryDataQuerySnapshot extends FirestoreQuerySnapshot<
    SkincareHistoryData, SkincareHistoryDataQueryDocumentSnapshot> {
  SkincareHistoryDataQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SkincareHistoryDataQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SkincareHistoryData> snapshot,
  ) {
    final docs =
        snapshot.docs.map(SkincareHistoryDataQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SkincareHistoryDataDocumentSnapshot._,
      );
    }).toList();

    return SkincareHistoryDataQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SkincareHistoryDataDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SkincareHistoryDataDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<SkincareHistoryDataDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SkincareHistoryData> snapshot;

  @override
  final List<SkincareHistoryDataQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SkincareHistoryDataDocumentSnapshot>>
      docChanges;
}

class SkincareHistoryDataQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SkincareHistoryData>
    implements SkincareHistoryDataDocumentSnapshot {
  SkincareHistoryDataQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SkincareHistoryData> snapshot;

  @override
  final SkincareHistoryData data;

  @override
  SkincareHistoryDataDocumentReference get reference {
    return SkincareHistoryDataDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkincareHistoryData _$SkincareHistoryDataFromJson(Map<String, dynamic> json) =>
    SkincareHistoryData(
      id: json['id'] as String,
      skincareListDataReferance: json['skincareListDataReferance'] as String,
      isUsed: json['isUsed'] as bool,
      dateTime: const FirestoreDateTimeConverter()
          .fromJson(json['dateTime'] as Timestamp),
    );

const _$SkincareHistoryDataFieldMap = <String, String>{
  'id': 'id',
  'skincareListDataReferance': 'skincareListDataReferance',
  'isUsed': 'isUsed',
  'dateTime': 'dateTime',
};

// ignore: unused_element
abstract class _$SkincareHistoryDataPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? skincareListDataReferance(String instance) => instance;
  // ignore: unused_element
  static Object? isUsed(bool instance) => instance;
  // ignore: unused_element
  static Object? dateTime(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$SkincareHistoryDataToJson(
        SkincareHistoryData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'skincareListDataReferance': instance.skincareListDataReferance,
      'isUsed': instance.isUsed,
      'dateTime': const FirestoreDateTimeConverter().toJson(instance.dateTime),
    };
