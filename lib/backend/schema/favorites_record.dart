import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoritesRecord extends FirestoreRecord {
  FavoritesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "listingId" field.
  DocumentReference? _listingId;
  DocumentReference? get listingId => _listingId;
  bool hasListingId() => _listingId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
    _listingId = snapshotData['listingId'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favorites');

  static Stream<FavoritesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoritesRecord.fromSnapshot(s));

  static Future<FavoritesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoritesRecord.fromSnapshot(s));

  static FavoritesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoritesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoritesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoritesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoritesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoritesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoritesRecordData({
  String? id,
  DocumentReference? userId,
  DocumentReference? listingId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'userId': userId,
      'listingId': listingId,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoritesRecordDocumentEquality implements Equality<FavoritesRecord> {
  const FavoritesRecordDocumentEquality();

  @override
  bool equals(FavoritesRecord? e1, FavoritesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.userId == e2?.userId &&
        e1?.listingId == e2?.listingId &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(FavoritesRecord? e) =>
      const ListEquality().hash([e?.id, e?.userId, e?.listingId, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is FavoritesRecord;
}
