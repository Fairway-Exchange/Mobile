import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BidsRecord extends FirestoreRecord {
  BidsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bidAmount" field.
  double? _bidAmount;
  double get bidAmount => _bidAmount ?? 0.0;
  bool hasBidAmount() => _bidAmount != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "expiresAt" field.
  DateTime? _expiresAt;
  DateTime? get expiresAt => _expiresAt;
  bool hasExpiresAt() => _expiresAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "bidderID" field.
  DocumentReference? _bidderID;
  DocumentReference? get bidderID => _bidderID;
  bool hasBidderID() => _bidderID != null;

  // "listingID" field.
  DocumentReference? _listingID;
  DocumentReference? get listingID => _listingID;
  bool hasListingID() => _listingID != null;

  // "sellerRef" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  void _initializeFields() {
    _bidAmount = castToType<double>(snapshotData['bidAmount']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _expiresAt = snapshotData['expiresAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _bidderID = snapshotData['bidderID'] as DocumentReference?;
    _listingID = snapshotData['listingID'] as DocumentReference?;
    _sellerRef = snapshotData['sellerRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bids');

  static Stream<BidsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BidsRecord.fromSnapshot(s));

  static Future<BidsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BidsRecord.fromSnapshot(s));

  static BidsRecord fromSnapshot(DocumentSnapshot snapshot) => BidsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BidsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BidsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BidsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BidsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBidsRecordData({
  double? bidAmount,
  DateTime? createdAt,
  DateTime? expiresAt,
  String? status,
  DocumentReference? bidderID,
  DocumentReference? listingID,
  DocumentReference? sellerRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bidAmount': bidAmount,
      'createdAt': createdAt,
      'expiresAt': expiresAt,
      'status': status,
      'bidderID': bidderID,
      'listingID': listingID,
      'sellerRef': sellerRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class BidsRecordDocumentEquality implements Equality<BidsRecord> {
  const BidsRecordDocumentEquality();

  @override
  bool equals(BidsRecord? e1, BidsRecord? e2) {
    return e1?.bidAmount == e2?.bidAmount &&
        e1?.createdAt == e2?.createdAt &&
        e1?.expiresAt == e2?.expiresAt &&
        e1?.status == e2?.status &&
        e1?.bidderID == e2?.bidderID &&
        e1?.listingID == e2?.listingID &&
        e1?.sellerRef == e2?.sellerRef;
  }

  @override
  int hash(BidsRecord? e) => const ListEquality().hash([
        e?.bidAmount,
        e?.createdAt,
        e?.expiresAt,
        e?.status,
        e?.bidderID,
        e?.listingID,
        e?.sellerRef
      ]);

  @override
  bool isValidKey(Object? o) => o is BidsRecord;
}
