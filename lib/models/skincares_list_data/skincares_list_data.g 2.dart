// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skincares_list_data.dart';

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
abstract class SkincareListDataCollectionReference
    implements
        SkincareListDataQuery,
        FirestoreCollectionReference<SkincareListData,
            SkincareListDataQuerySnapshot> {
  factory SkincareListDataCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SkincareListDataCollectionReference;

  static SkincareListData fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SkincareListData.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    SkincareListData value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<SkincareListData> get reference;

  @override
  SkincareListDataDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SkincareListDataDocumentReference> add(SkincareListData value);
}

class _$SkincareListDataCollectionReference extends _$SkincareListDataQuery
    implements SkincareListDataCollectionReference {
  factory _$SkincareListDataCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SkincareListDataCollectionReference._(
      firestore.collection('SkincareListData').withConverter(
            fromFirestore: SkincareListDataCollectionReference.fromFirestore,
            toFirestore: SkincareListDataCollectionReference.toFirestore,
          ),
    );
  }

  _$SkincareListDataCollectionReference._(
    CollectionReference<SkincareListData> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<SkincareListData> get reference =>
      super.reference as CollectionReference<SkincareListData>;

  @override
  SkincareListDataDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SkincareListDataDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SkincareListDataDocumentReference> add(SkincareListData value) {
    return reference
        .add(value)
        .then((ref) => SkincareListDataDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SkincareListDataCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SkincareListDataDocumentReference
    extends FirestoreDocumentReference<SkincareListData,
        SkincareListDataDocumentSnapshot> {
  factory SkincareListDataDocumentReference(
          DocumentReference<SkincareListData> reference) =
      _$SkincareListDataDocumentReference;

  DocumentReference<SkincareListData> get reference;

  /// A reference to the [SkincareListDataCollectionReference] containing this document.
  SkincareListDataCollectionReference get parent {
    return _$SkincareListDataCollectionReference(reference.firestore);
  }

  @override
  Stream<SkincareListDataDocumentSnapshot> snapshots();

  @override
  Future<SkincareListDataDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String imagePath,
    FieldValue imagePathFieldValue,
    String titleTxt,
    FieldValue titleTxtFieldValue,
    String startColor,
    FieldValue startColorFieldValue,
    String endColor,
    FieldValue endColorFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
    bool isUsed,
    FieldValue isUsedFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String imagePath,
    FieldValue imagePathFieldValue,
    String titleTxt,
    FieldValue titleTxtFieldValue,
    String startColor,
    FieldValue startColorFieldValue,
    String endColor,
    FieldValue endColorFieldValue,
    DateTime dateTime,
    FieldValue dateTimeFieldValue,
    bool isUsed,
    FieldValue isUsedFieldValue,
  });
}

class _$SkincareListDataDocumentReference extends FirestoreDocumentReference<
        SkincareListData, SkincareListDataDocumentSnapshot>
    implements SkincareListDataDocumentReference {
  _$SkincareListDataDocumentReference(this.reference);

  @override
  final DocumentReference<SkincareListData> reference;

  /// A reference to the [SkincareListDataCollectionReference] containing this document.
  SkincareListDataCollectionReference get parent {
    return _$SkincareListDataCollectionReference(reference.firestore);
  }

  @override
  Stream<SkincareListDataDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SkincareListDataDocumentSnapshot._);
  }

  @override
  Future<SkincareListDataDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SkincareListDataDocumentSnapshot._);
  }

  @override
  Future<SkincareListDataDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(SkincareListDataDocumentSnapshot._);
  }

  Future<void> update({
    Object? imagePath = _sentinel,
    FieldValue? imagePathFieldValue,
    Object? titleTxt = _sentinel,
    FieldValue? titleTxtFieldValue,
    Object? startColor = _sentinel,
    FieldValue? startColorFieldValue,
    Object? endColor = _sentinel,
    FieldValue? endColorFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
    Object? isUsed = _sentinel,
    FieldValue? isUsedFieldValue,
  }) async {
    assert(
      imagePath == _sentinel || imagePathFieldValue == null,
      "Cannot specify both imagePath and imagePathFieldValue",
    );
    assert(
      titleTxt == _sentinel || titleTxtFieldValue == null,
      "Cannot specify both titleTxt and titleTxtFieldValue",
    );
    assert(
      startColor == _sentinel || startColorFieldValue == null,
      "Cannot specify both startColor and startColorFieldValue",
    );
    assert(
      endColor == _sentinel || endColorFieldValue == null,
      "Cannot specify both endColor and endColorFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    assert(
      isUsed == _sentinel || isUsedFieldValue == null,
      "Cannot specify both isUsed and isUsedFieldValue",
    );
    final json = {
      if (imagePath != _sentinel)
        _$SkincareListDataFieldMap['imagePath']!:
            _$SkincareListDataPerFieldToJson.imagePath(imagePath as String),
      if (imagePathFieldValue != null)
        _$SkincareListDataFieldMap['imagePath']!: imagePathFieldValue,
      if (titleTxt != _sentinel)
        _$SkincareListDataFieldMap['titleTxt']!:
            _$SkincareListDataPerFieldToJson.titleTxt(titleTxt as String),
      if (titleTxtFieldValue != null)
        _$SkincareListDataFieldMap['titleTxt']!: titleTxtFieldValue,
      if (startColor != _sentinel)
        _$SkincareListDataFieldMap['startColor']!:
            _$SkincareListDataPerFieldToJson.startColor(startColor as String),
      if (startColorFieldValue != null)
        _$SkincareListDataFieldMap['startColor']!: startColorFieldValue,
      if (endColor != _sentinel)
        _$SkincareListDataFieldMap['endColor']!:
            _$SkincareListDataPerFieldToJson.endColor(endColor as String),
      if (endColorFieldValue != null)
        _$SkincareListDataFieldMap['endColor']!: endColorFieldValue,
      if (dateTime != _sentinel)
        _$SkincareListDataFieldMap['dateTime']!:
            _$SkincareListDataPerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$SkincareListDataFieldMap['dateTime']!: dateTimeFieldValue,
      if (isUsed != _sentinel)
        _$SkincareListDataFieldMap['isUsed']!:
            _$SkincareListDataPerFieldToJson.isUsed(isUsed as bool),
      if (isUsedFieldValue != null)
        _$SkincareListDataFieldMap['isUsed']!: isUsedFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? imagePath = _sentinel,
    FieldValue? imagePathFieldValue,
    Object? titleTxt = _sentinel,
    FieldValue? titleTxtFieldValue,
    Object? startColor = _sentinel,
    FieldValue? startColorFieldValue,
    Object? endColor = _sentinel,
    FieldValue? endColorFieldValue,
    Object? dateTime = _sentinel,
    FieldValue? dateTimeFieldValue,
    Object? isUsed = _sentinel,
    FieldValue? isUsedFieldValue,
  }) {
    assert(
      imagePath == _sentinel || imagePathFieldValue == null,
      "Cannot specify both imagePath and imagePathFieldValue",
    );
    assert(
      titleTxt == _sentinel || titleTxtFieldValue == null,
      "Cannot specify both titleTxt and titleTxtFieldValue",
    );
    assert(
      startColor == _sentinel || startColorFieldValue == null,
      "Cannot specify both startColor and startColorFieldValue",
    );
    assert(
      endColor == _sentinel || endColorFieldValue == null,
      "Cannot specify both endColor and endColorFieldValue",
    );
    assert(
      dateTime == _sentinel || dateTimeFieldValue == null,
      "Cannot specify both dateTime and dateTimeFieldValue",
    );
    assert(
      isUsed == _sentinel || isUsedFieldValue == null,
      "Cannot specify both isUsed and isUsedFieldValue",
    );
    final json = {
      if (imagePath != _sentinel)
        _$SkincareListDataFieldMap['imagePath']!:
            _$SkincareListDataPerFieldToJson.imagePath(imagePath as String),
      if (imagePathFieldValue != null)
        _$SkincareListDataFieldMap['imagePath']!: imagePathFieldValue,
      if (titleTxt != _sentinel)
        _$SkincareListDataFieldMap['titleTxt']!:
            _$SkincareListDataPerFieldToJson.titleTxt(titleTxt as String),
      if (titleTxtFieldValue != null)
        _$SkincareListDataFieldMap['titleTxt']!: titleTxtFieldValue,
      if (startColor != _sentinel)
        _$SkincareListDataFieldMap['startColor']!:
            _$SkincareListDataPerFieldToJson.startColor(startColor as String),
      if (startColorFieldValue != null)
        _$SkincareListDataFieldMap['startColor']!: startColorFieldValue,
      if (endColor != _sentinel)
        _$SkincareListDataFieldMap['endColor']!:
            _$SkincareListDataPerFieldToJson.endColor(endColor as String),
      if (endColorFieldValue != null)
        _$SkincareListDataFieldMap['endColor']!: endColorFieldValue,
      if (dateTime != _sentinel)
        _$SkincareListDataFieldMap['dateTime']!:
            _$SkincareListDataPerFieldToJson.dateTime(dateTime as DateTime),
      if (dateTimeFieldValue != null)
        _$SkincareListDataFieldMap['dateTime']!: dateTimeFieldValue,
      if (isUsed != _sentinel)
        _$SkincareListDataFieldMap['isUsed']!:
            _$SkincareListDataPerFieldToJson.isUsed(isUsed as bool),
      if (isUsedFieldValue != null)
        _$SkincareListDataFieldMap['isUsed']!: isUsedFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SkincareListDataDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SkincareListDataQuery
    implements QueryReference<SkincareListData, SkincareListDataQuerySnapshot> {
  @override
  SkincareListDataQuery limit(int limit);

  @override
  SkincareListDataQuery limitToLast(int limit);

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
  SkincareListDataQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
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
  SkincareListDataQuery whereFieldPath(
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

  SkincareListDataQuery whereDocumentId({
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
  SkincareListDataQuery whereImagePath({
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
  SkincareListDataQuery whereTitleTxt({
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
  SkincareListDataQuery whereStartColor({
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
  SkincareListDataQuery whereEndColor({
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
  SkincareListDataQuery whereDateTime({
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
  SkincareListDataQuery whereIsUsed({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });

  SkincareListDataQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  });

  SkincareListDataQuery orderByImagePath({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  });

  SkincareListDataQuery orderByTitleTxt({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  });

  SkincareListDataQuery orderByStartColor({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  });

  SkincareListDataQuery orderByEndColor({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  });

  SkincareListDataQuery orderByDateTime({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  });

  SkincareListDataQuery orderByIsUsed({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  });
}

class _$SkincareListDataQuery
    extends QueryReference<SkincareListData, SkincareListDataQuerySnapshot>
    implements SkincareListDataQuery {
  _$SkincareListDataQuery(
    this._collection, {
    required Query<SkincareListData> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SkincareListDataQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SkincareListDataQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SkincareListDataQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SkincareListDataQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SkincareListDataQuery limit(int limit) {
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareListDataQuery limitToLast(int limit) {
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SkincareListDataQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
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
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SkincareListDataQuery whereFieldPath(
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
    return _$SkincareListDataQuery(
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

  SkincareListDataQuery whereDocumentId({
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
    return _$SkincareListDataQuery(
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

  SkincareListDataQuery whereImagePath({
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
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareListDataFieldMap['imagePath']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.imagePath(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.imagePath(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SkincareListDataPerFieldToJson.imagePath(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .imagePath(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareListDataPerFieldToJson
                .imagePath(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .imagePath(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SkincareListDataPerFieldToJson.imagePath(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$SkincareListDataPerFieldToJson.imagePath(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SkincareListDataQuery whereTitleTxt({
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
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareListDataFieldMap['titleTxt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.titleTxt(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.titleTxt(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SkincareListDataPerFieldToJson.titleTxt(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .titleTxt(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareListDataPerFieldToJson.titleTxt(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .titleTxt(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SkincareListDataPerFieldToJson.titleTxt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$SkincareListDataPerFieldToJson.titleTxt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SkincareListDataQuery whereStartColor({
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
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareListDataFieldMap['startColor']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.startColor(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson
                .startColor(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SkincareListDataPerFieldToJson.startColor(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .startColor(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareListDataPerFieldToJson
                .startColor(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .startColor(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SkincareListDataPerFieldToJson.startColor(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$SkincareListDataPerFieldToJson.startColor(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SkincareListDataQuery whereEndColor({
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
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareListDataFieldMap['endColor']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.endColor(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.endColor(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SkincareListDataPerFieldToJson.endColor(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .endColor(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareListDataPerFieldToJson.endColor(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .endColor(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SkincareListDataPerFieldToJson.endColor(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$SkincareListDataPerFieldToJson.endColor(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SkincareListDataQuery whereDateTime({
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
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareListDataFieldMap['dateTime']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.dateTime(isEqualTo as DateTime)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson
                .dateTime(isNotEqualTo as DateTime)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SkincareListDataPerFieldToJson.dateTime(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .dateTime(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareListDataPerFieldToJson
                .dateTime(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .dateTime(isGreaterThanOrEqualTo as DateTime)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SkincareListDataPerFieldToJson.dateTime(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$SkincareListDataPerFieldToJson.dateTime(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SkincareListDataQuery whereIsUsed({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareListDataFieldMap['isUsed']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.isUsed(isEqualTo as bool)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SkincareListDataPerFieldToJson.isUsed(isNotEqualTo as bool)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SkincareListDataPerFieldToJson.isUsed(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .isUsed(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareListDataPerFieldToJson.isUsed(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareListDataPerFieldToJson
                .isUsed(isGreaterThanOrEqualTo as bool)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SkincareListDataPerFieldToJson.isUsed(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SkincareListDataPerFieldToJson.isUsed(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SkincareListDataQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
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

    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SkincareListDataQuery orderByImagePath({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareListDataFieldMap['imagePath']!,
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

    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SkincareListDataQuery orderByTitleTxt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareListDataFieldMap['titleTxt']!,
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

    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SkincareListDataQuery orderByStartColor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareListDataFieldMap['startColor']!,
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

    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SkincareListDataQuery orderByEndColor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareListDataFieldMap['endColor']!,
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

    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SkincareListDataQuery orderByDateTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareListDataFieldMap['dateTime']!,
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

    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SkincareListDataQuery orderByIsUsed({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareListDataDocumentSnapshot? startAtDocument,
    SkincareListDataDocumentSnapshot? endAtDocument,
    SkincareListDataDocumentSnapshot? endBeforeDocument,
    SkincareListDataDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SkincareListDataFieldMap['isUsed']!, descending: descending);
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

    return _$SkincareListDataQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SkincareListDataQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SkincareListDataDocumentSnapshot
    extends FirestoreDocumentSnapshot<SkincareListData> {
  SkincareListDataDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SkincareListData> snapshot;

  @override
  SkincareListDataDocumentReference get reference {
    return SkincareListDataDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SkincareListData? data;
}

class SkincareListDataQuerySnapshot extends FirestoreQuerySnapshot<
    SkincareListData, SkincareListDataQueryDocumentSnapshot> {
  SkincareListDataQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SkincareListDataQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SkincareListData> snapshot,
  ) {
    final docs =
        snapshot.docs.map(SkincareListDataQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SkincareListDataDocumentSnapshot._,
      );
    }).toList();

    return SkincareListDataQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SkincareListDataDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SkincareListDataDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<SkincareListDataDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SkincareListData> snapshot;

  @override
  final List<SkincareListDataQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SkincareListDataDocumentSnapshot>>
      docChanges;
}

class SkincareListDataQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SkincareListData>
    implements SkincareListDataDocumentSnapshot {
  SkincareListDataQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SkincareListData> snapshot;

  @override
  final SkincareListData data;

  @override
  SkincareListDataDocumentReference get reference {
    return SkincareListDataDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkincareListData _$SkincareListDataFromJson(Map<String, dynamic> json) =>
    SkincareListData(
      id: json['id'] as String,
      imagePath: json['imagePath'] as String,
      titleTxt: json['titleTxt'] as String,
      isUsed: json['isUsed'] as bool? ?? false,
      startColor: json['startColor'] as String,
      endColor: json['endColor'] as String,
      dateTime: const FirestoreDateTimeConverter()
          .fromJson(json['dateTime'] as Timestamp),
    );

const _$SkincareListDataFieldMap = <String, String>{
  'id': 'id',
  'imagePath': 'imagePath',
  'titleTxt': 'titleTxt',
  'startColor': 'startColor',
  'endColor': 'endColor',
  'dateTime': 'dateTime',
  'isUsed': 'isUsed',
};

// ignore: unused_element
abstract class _$SkincareListDataPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? imagePath(String instance) => instance;
  // ignore: unused_element
  static Object? titleTxt(String instance) => instance;
  // ignore: unused_element
  static Object? startColor(String instance) => instance;
  // ignore: unused_element
  static Object? endColor(String instance) => instance;
  // ignore: unused_element
  static Object? dateTime(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? isUsed(bool instance) => instance;
}

Map<String, dynamic> _$SkincareListDataToJson(SkincareListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'titleTxt': instance.titleTxt,
      'startColor': instance.startColor,
      'endColor': instance.endColor,
      'dateTime': const FirestoreDateTimeConverter().toJson(instance.dateTime),
      'isUsed': instance.isUsed,
    };
