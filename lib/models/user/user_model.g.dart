// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

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
abstract class UserModelCollectionReference
    implements
        UserModelQuery,
        FirestoreCollectionReference<UserModel, UserModelQuerySnapshot> {
  factory UserModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserModelCollectionReference;

  static UserModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return UserModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    UserModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<UserModel> get reference;

  @override
  UserModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserModelDocumentReference> add(UserModel value);
}

class _$UserModelCollectionReference extends _$UserModelQuery
    implements UserModelCollectionReference {
  factory _$UserModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserModelCollectionReference._(
      firestore.collection('Users').withConverter(
            fromFirestore: UserModelCollectionReference.fromFirestore,
            toFirestore: UserModelCollectionReference.toFirestore,
          ),
    );
  }

  _$UserModelCollectionReference._(
    CollectionReference<UserModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<UserModel> get reference =>
      super.reference as CollectionReference<UserModel>;

  @override
  UserModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserModelDocumentReference> add(UserModel value) {
    return reference.add(value).then((ref) => UserModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserModelDocumentReference
    extends FirestoreDocumentReference<UserModel, UserModelDocumentSnapshot> {
  factory UserModelDocumentReference(DocumentReference<UserModel> reference) =
      _$UserModelDocumentReference;

  DocumentReference<UserModel> get reference;

  /// A reference to the [UserModelCollectionReference] containing this document.
  UserModelCollectionReference get parent {
    return _$UserModelCollectionReference(reference.firestore);
  }

  @override
  Stream<UserModelDocumentSnapshot> snapshots();

  @override
  Future<UserModelDocumentSnapshot> get([GetOptions? options]);

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

class _$UserModelDocumentReference
    extends FirestoreDocumentReference<UserModel, UserModelDocumentSnapshot>
    implements UserModelDocumentReference {
  _$UserModelDocumentReference(this.reference);

  @override
  final DocumentReference<UserModel> reference;

  /// A reference to the [UserModelCollectionReference] containing this document.
  UserModelCollectionReference get parent {
    return _$UserModelCollectionReference(reference.firestore);
  }

  @override
  Stream<UserModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserModelDocumentSnapshot._);
  }

  @override
  Future<UserModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserModelDocumentSnapshot._);
  }

  @override
  Future<UserModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserModelDocumentSnapshot._);
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
        _$UserModelFieldMap['name']!:
            _$UserModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserModelFieldMap['name']!: nameFieldValue,
      if (surname != _sentinel)
        _$UserModelFieldMap['surname']!:
            _$UserModelPerFieldToJson.surname(surname as String),
      if (surnameFieldValue != null)
        _$UserModelFieldMap['surname']!: surnameFieldValue,
      if (email != _sentinel)
        _$UserModelFieldMap['email']!:
            _$UserModelPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$UserModelFieldMap['email']!: emailFieldValue,
      if (password != _sentinel)
        _$UserModelFieldMap['password']!:
            _$UserModelPerFieldToJson.password(password as String),
      if (passwordFieldValue != null)
        _$UserModelFieldMap['password']!: passwordFieldValue,
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
        _$UserModelFieldMap['name']!:
            _$UserModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserModelFieldMap['name']!: nameFieldValue,
      if (surname != _sentinel)
        _$UserModelFieldMap['surname']!:
            _$UserModelPerFieldToJson.surname(surname as String),
      if (surnameFieldValue != null)
        _$UserModelFieldMap['surname']!: surnameFieldValue,
      if (email != _sentinel)
        _$UserModelFieldMap['email']!:
            _$UserModelPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$UserModelFieldMap['email']!: emailFieldValue,
      if (password != _sentinel)
        _$UserModelFieldMap['password']!:
            _$UserModelPerFieldToJson.password(password as String),
      if (passwordFieldValue != null)
        _$UserModelFieldMap['password']!: passwordFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserModelQuery
    implements QueryReference<UserModel, UserModelQuerySnapshot> {
  @override
  UserModelQuery limit(int limit);

  @override
  UserModelQuery limitToLast(int limit);

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
  UserModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
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
  UserModelQuery whereFieldPath(
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

  UserModelQuery whereDocumentId({
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
  UserModelQuery whereName({
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
  UserModelQuery whereSurname({
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
  UserModelQuery whereEmail({
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
  UserModelQuery wherePassword({
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

  UserModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderBySurname({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });

  UserModelQuery orderByPassword({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  });
}

class _$UserModelQuery extends QueryReference<UserModel, UserModelQuerySnapshot>
    implements UserModelQuery {
  _$UserModelQuery(
    this._collection, {
    required Query<UserModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserModelQuery limit(int limit) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserModelQuery limitToLast(int limit) {
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  UserModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
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
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserModelQuery whereFieldPath(
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
    return _$UserModelQuery(
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

  UserModelQuery whereDocumentId({
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
    return _$UserModelQuery(
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

  UserModelQuery whereName({
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
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['name']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.name(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.name(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserModelPerFieldToJson.name(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserModelQuery whereSurname({
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
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['surname']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.surname(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.surname(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.surname(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.surname(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.surname(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .surname(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.surname(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserModelPerFieldToJson.surname(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserModelQuery whereEmail({
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
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['email']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.email(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.email(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserModelPerFieldToJson.email(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserModelQuery wherePassword({
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
    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserModelFieldMap['password']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.password(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$UserModelPerFieldToJson.password(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$UserModelPerFieldToJson.password(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserModelPerFieldToJson.password(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserModelPerFieldToJson.password(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserModelPerFieldToJson
                .password(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$UserModelPerFieldToJson.password(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserModelPerFieldToJson.password(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
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

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserModelQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserModelFieldMap['name']!,
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

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserModelQuery orderBySurname({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserModelFieldMap['surname']!, descending: descending);
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

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserModelQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserModelFieldMap['email']!,
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

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserModelQuery orderByPassword({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserModelDocumentSnapshot? startAtDocument,
    UserModelDocumentSnapshot? endAtDocument,
    UserModelDocumentSnapshot? endBeforeDocument,
    UserModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserModelFieldMap['password']!, descending: descending);
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

    return _$UserModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserModelDocumentSnapshot extends FirestoreDocumentSnapshot<UserModel> {
  UserModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserModel> snapshot;

  @override
  UserModelDocumentReference get reference {
    return UserModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserModel? data;
}

class UserModelQuerySnapshot
    extends FirestoreQuerySnapshot<UserModel, UserModelQueryDocumentSnapshot> {
  UserModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserModel> snapshot,
  ) {
    final docs = snapshot.docs.map(UserModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserModelDocumentSnapshot._,
      );
    }).toList();

    return UserModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserModel> snapshot;

  @override
  final List<UserModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserModelDocumentSnapshot>> docChanges;
}

class UserModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserModel>
    implements UserModelDocumentSnapshot {
  UserModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserModel> snapshot;

  @override
  final UserModel data;

  @override
  UserModelDocumentReference get reference {
    return UserModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

const _$UserModelFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'surname': 'surname',
  'email': 'email',
  'password': 'password',
};

// ignore: unused_element
abstract class _$UserModelPerFieldToJson {
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

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'password': instance.password,
    };
