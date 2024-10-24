import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductReviewsRecord extends FirestoreRecord {
  ProductReviewsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "reviewerId" field.
  DocumentReference? _reviewerId;
  DocumentReference? get reviewerId => _reviewerId;
  bool hasReviewerId() => _reviewerId != null;

  // "listingId" field.
  DocumentReference? _listingId;
  DocumentReference? get listingId => _listingId;
  bool hasListingId() => _listingId != null;

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
    _listingId = snapshotData['listingId'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productReviews');

  static Stream<ProductReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductReviewsRecord.fromSnapshot(s));

  static Future<ProductReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductReviewsRecord.fromSnapshot(s));

  static ProductReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductReviewsRecordData({
  DocumentReference? reviewerId,
  DocumentReference? listingId,
  double? rating,
  String? comment,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reviewerId': reviewerId,
      'listingId': listingId,
      'rating': rating,
      'comment': comment,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductReviewsRecordDocumentEquality
    implements Equality<ProductReviewsRecord> {
  const ProductReviewsRecordDocumentEquality();

  @override
  bool equals(ProductReviewsRecord? e1, ProductReviewsRecord? e2) {
    return e1?.reviewerId == e2?.reviewerId &&
        e1?.listingId == e2?.listingId &&
        e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ProductReviewsRecord? e) => const ListEquality()
      .hash([e?.reviewerId, e?.listingId, e?.rating, e?.comment, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is ProductReviewsRecord;
}
