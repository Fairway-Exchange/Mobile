import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SellerReviewsRecord extends FirestoreRecord {
  SellerReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviewerId" field.
  DocumentReference? _reviewerId;
  DocumentReference? get reviewerId => _reviewerId;
  bool hasReviewerId() => _reviewerId != null;

  // "sellerId" field.
  DocumentReference? _sellerId;
  DocumentReference? get sellerId => _sellerId;
  bool hasSellerId() => _sellerId != null;

  // "transactionId" field.
  DocumentReference? _transactionId;
  DocumentReference? get transactionId => _transactionId;
  bool hasTransactionId() => _transactionId != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _reviewerId = snapshotData['reviewerId'] as DocumentReference?;
    _sellerId = snapshotData['sellerId'] as DocumentReference?;
    _transactionId = snapshotData['transactionId'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sellerReviews');

  static Stream<SellerReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SellerReviewsRecord.fromSnapshot(s));

  static Future<SellerReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SellerReviewsRecord.fromSnapshot(s));

  static SellerReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SellerReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SellerReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SellerReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SellerReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SellerReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSellerReviewsRecordData({
  DocumentReference? reviewerId,
  DocumentReference? sellerId,
  DocumentReference? transactionId,
  double? rating,
  String? comment,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewerId': reviewerId,
      'sellerId': sellerId,
      'transactionId': transactionId,
      'rating': rating,
      'comment': comment,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SellerReviewsRecordDocumentEquality
    implements Equality<SellerReviewsRecord> {
  const SellerReviewsRecordDocumentEquality();

  @override
  bool equals(SellerReviewsRecord? e1, SellerReviewsRecord? e2) {
    return e1?.reviewerId == e2?.reviewerId &&
        e1?.sellerId == e2?.sellerId &&
        e1?.transactionId == e2?.transactionId &&
        e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SellerReviewsRecord? e) => const ListEquality().hash([
        e?.reviewerId,
        e?.sellerId,
        e?.transactionId,
        e?.rating,
        e?.comment,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is SellerReviewsRecord;
}
