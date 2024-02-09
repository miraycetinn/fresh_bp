// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skincare_concern.dart';

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
abstract class SkincareConcernCollectionReference
    implements
        SkincareConcernQuery,
        FirestoreCollectionReference<SkincareConcern,
            SkincareConcernQuerySnapshot> {
  factory SkincareConcernCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SkincareConcernCollectionReference;

  static SkincareConcern fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SkincareConcern.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    SkincareConcern value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<SkincareConcern> get reference;

  @override
  SkincareConcernDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SkincareConcernDocumentReference> add(SkincareConcern value);
}

class _$SkincareConcernCollectionReference extends _$SkincareConcernQuery
    implements SkincareConcernCollectionReference {
  factory _$SkincareConcernCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SkincareConcernCollectionReference._(
      firestore.collection('SkincareConcern').withConverter(
            fromFirestore: SkincareConcernCollectionReference.fromFirestore,
            toFirestore: SkincareConcernCollectionReference.toFirestore,
          ),
    );
  }

  _$SkincareConcernCollectionReference._(
    CollectionReference<SkincareConcern> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<SkincareConcern> get reference =>
      super.reference as CollectionReference<SkincareConcern>;

  @override
  SkincareConcernDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SkincareConcernDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SkincareConcernDocumentReference> add(SkincareConcern value) {
    return reference
        .add(value)
        .then((ref) => SkincareConcernDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SkincareConcernCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SkincareConcernDocumentReference
    extends FirestoreDocumentReference<SkincareConcern,
        SkincareConcernDocumentSnapshot> {
  factory SkincareConcernDocumentReference(
          DocumentReference<SkincareConcern> reference) =
      _$SkincareConcernDocumentReference;

  DocumentReference<SkincareConcern> get reference;

  /// A reference to the [SkincareConcernCollectionReference] containing this document.
  SkincareConcernCollectionReference get parent {
    return _$SkincareConcernCollectionReference(reference.firestore);
  }

  @override
  Stream<SkincareConcernDocumentSnapshot> snapshots();

  @override
  Future<SkincareConcernDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String surname,
    FieldValue surnameFieldValue,
    String email,
    FieldValue emailFieldValue,
    String password,
    FieldValue passwordFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String surname,
    FieldValue surnameFieldValue,
    String email,
    FieldValue emailFieldValue,
    String password,
    FieldValue passwordFieldValue,
  });
}

class _$SkincareConcernDocumentReference extends FirestoreDocumentReference<
        SkincareConcern, SkincareConcernDocumentSnapshot>
    implements SkincareConcernDocumentReference {
  _$SkincareConcernDocumentReference(this.reference);

  @override
  final DocumentReference<SkincareConcern> reference;

  /// A reference to the [SkincareConcernCollectionReference] containing this document.
  SkincareConcernCollectionReference get parent {
    return _$SkincareConcernCollectionReference(reference.firestore);
  }

  @override
  Stream<SkincareConcernDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SkincareConcernDocumentSnapshot._);
  }

  @override
  Future<SkincareConcernDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SkincareConcernDocumentSnapshot._);
  }

  @override
  Future<SkincareConcernDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(SkincareConcernDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? surname = _sentinel,
    FieldValue? surnameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? password = _sentinel,
    FieldValue? passwordFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      surname == _sentinel || surnameFieldValue == null,
      "Cannot specify both surname and surnameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      password == _sentinel || passwordFieldValue == null,
      "Cannot specify both password and passwordFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$SkincareConcernFieldMap['name']!:
            _$SkincareConcernPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$SkincareConcernFieldMap['name']!: nameFieldValue,
      if (surname != _sentinel)
        _$SkincareConcernFieldMap['surname']!:
            _$SkincareConcernPerFieldToJson.surname(surname as String),
      if (surnameFieldValue != null)
        _$SkincareConcernFieldMap['surname']!: surnameFieldValue,
      if (email != _sentinel)
        _$SkincareConcernFieldMap['email']!:
            _$SkincareConcernPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$SkincareConcernFieldMap['email']!: emailFieldValue,
      if (password != _sentinel)
        _$SkincareConcernFieldMap['password']!:
            _$SkincareConcernPerFieldToJson.password(password as String),
      if (passwordFieldValue != null)
        _$SkincareConcernFieldMap['password']!: passwordFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? surname = _sentinel,
    FieldValue? surnameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? password = _sentinel,
    FieldValue? passwordFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      surname == _sentinel || surnameFieldValue == null,
      "Cannot specify both surname and surnameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      password == _sentinel || passwordFieldValue == null,
      "Cannot specify both password and passwordFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$SkincareConcernFieldMap['name']!:
            _$SkincareConcernPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$SkincareConcernFieldMap['name']!: nameFieldValue,
      if (surname != _sentinel)
        _$SkincareConcernFieldMap['surname']!:
            _$SkincareConcernPerFieldToJson.surname(surname as String),
      if (surnameFieldValue != null)
        _$SkincareConcernFieldMap['surname']!: surnameFieldValue,
      if (email != _sentinel)
        _$SkincareConcernFieldMap['email']!:
            _$SkincareConcernPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$SkincareConcernFieldMap['email']!: emailFieldValue,
      if (password != _sentinel)
        _$SkincareConcernFieldMap['password']!:
            _$SkincareConcernPerFieldToJson.password(password as String),
      if (passwordFieldValue != null)
        _$SkincareConcernFieldMap['password']!: passwordFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SkincareConcernDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SkincareConcernQuery
    implements QueryReference<SkincareConcern, SkincareConcernQuerySnapshot> {
  @override
  SkincareConcernQuery limit(int limit);

  @override
  SkincareConcernQuery limitToLast(int limit);

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
  SkincareConcernQuery whereFieldPath(
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

  SkincareConcernQuery whereDocumentId({
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

  SkincareConcernQuery whereName({
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

  SkincareConcernQuery whereSurname({
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

  SkincareConcernQuery whereEmail({
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

  SkincareConcernQuery wherePassword({
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
  SkincareConcernQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  });

  SkincareConcernQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  });

  SkincareConcernQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  });

  SkincareConcernQuery orderBySurname({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  });

  SkincareConcernQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  });

  SkincareConcernQuery orderByPassword({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  });
}

class _$SkincareConcernQuery
    extends QueryReference<SkincareConcern, SkincareConcernQuerySnapshot>
    implements SkincareConcernQuery {
  _$SkincareConcernQuery(
    this._collection, {
    required Query<SkincareConcern> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SkincareConcernQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SkincareConcernQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SkincareConcernQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SkincareConcernQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SkincareConcernQuery limit(int limit) {
    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareConcernQuery limitToLast(int limit) {
    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareConcernQuery whereFieldPath(
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
    return _$SkincareConcernQuery(
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
  SkincareConcernQuery whereDocumentId({
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
    return _$SkincareConcernQuery(
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
  SkincareConcernQuery whereName({
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
    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareConcernFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$SkincareConcernPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareConcernPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$SkincareConcernPerFieldToJson.name(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SkincareConcernPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareConcernQuery whereSurname({
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
    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareConcernFieldMap['surname']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.surname(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.surname(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$SkincareConcernPerFieldToJson.surname(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .surname(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareConcernPerFieldToJson.surname(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .surname(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$SkincareConcernPerFieldToJson.surname(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SkincareConcernPerFieldToJson.surname(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareConcernQuery whereEmail({
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
    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareConcernFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$SkincareConcernPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareConcernPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$SkincareConcernPerFieldToJson.email(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SkincareConcernPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareConcernQuery wherePassword({
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
    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SkincareConcernFieldMap['password']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.password(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$SkincareConcernPerFieldToJson.password(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$SkincareConcernPerFieldToJson.password(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .password(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SkincareConcernPerFieldToJson.password(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SkincareConcernPerFieldToJson
                .password(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$SkincareConcernPerFieldToJson.password(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SkincareConcernPerFieldToJson.password(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SkincareConcernQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
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

    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareConcernQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
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

    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareConcernQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SkincareConcernFieldMap['name']!, descending: descending);
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

    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareConcernQuery orderBySurname({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SkincareConcernFieldMap['surname']!, descending: descending);
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

    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareConcernQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SkincareConcernFieldMap['email']!, descending: descending);
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

    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  SkincareConcernQuery orderByPassword({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SkincareConcernDocumentSnapshot? startAtDocument,
    SkincareConcernDocumentSnapshot? endAtDocument,
    SkincareConcernDocumentSnapshot? endBeforeDocument,
    SkincareConcernDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SkincareConcernFieldMap['password']!,
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

    return _$SkincareConcernQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SkincareConcernQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SkincareConcernDocumentSnapshot
    extends FirestoreDocumentSnapshot<SkincareConcern> {
  SkincareConcernDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SkincareConcern> snapshot;

  @override
  SkincareConcernDocumentReference get reference {
    return SkincareConcernDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SkincareConcern? data;
}

class SkincareConcernQuerySnapshot extends FirestoreQuerySnapshot<
    SkincareConcern, SkincareConcernQueryDocumentSnapshot> {
  SkincareConcernQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SkincareConcernQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SkincareConcern> snapshot,
  ) {
    final docs =
        snapshot.docs.map(SkincareConcernQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SkincareConcernDocumentSnapshot._,
      );
    }).toList();

    return SkincareConcernQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SkincareConcernDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SkincareConcernDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SkincareConcernDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SkincareConcern> snapshot;

  @override
  final List<SkincareConcernQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SkincareConcernDocumentSnapshot>>
      docChanges;
}

class SkincareConcernQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SkincareConcern>
    implements SkincareConcernDocumentSnapshot {
  SkincareConcernQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SkincareConcern> snapshot;

  @override
  final SkincareConcern data;

  @override
  SkincareConcernDocumentReference get reference {
    return SkincareConcernDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkincareConcern _$SkincareConcernFromJson(Map<String, dynamic> json) =>
    SkincareConcern(
      id: json['id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

const _$SkincareConcernFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'surname': 'surname',
  'email': 'email',
  'password': 'password',
};

// ignore: unused_element
abstract class _$SkincareConcernPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? surname(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? password(String instance) => instance;
}

Map<String, dynamic> _$SkincareConcernToJson(SkincareConcern instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'password': instance.password,
    };
