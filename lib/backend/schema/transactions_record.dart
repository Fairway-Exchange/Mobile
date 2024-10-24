import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "listingId" field.
  DocumentReference? _listingId;
  DocumentReference? get listingId => _listingId;
  bool hasListingId() => _listingId != null;

  // "buyerId" field.
  DocumentReference? _buyerId;
  DocumentReference? get buyerId => _buyerId;
  bool hasBuyerId() => _buyerId != null;

  // "sellerId" field.
  DocumentReference? _sellerId;
  DocumentReference? get sellerId => _sellerId;
  bool hasSellerId() => _sellerId != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "fairwayExchangeFee" field.
  double? _fairwayExchangeFee;
  double get fairwayExchangeFee => _fairwayExchangeFee ?? 0.0;
  bool hasFairwayExchangeFee() => _fairwayExchangeFee != null;

  // "sellerPayout" field.
  double? _sellerPayout;
  double get sellerPayout => _sellerPayout ?? 0.0;
  bool hasSellerPayout() => _sellerPayout != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "completedAt" field.
  DateTime? _completedAt;
  DateTime? get completedAt => _completedAt;
  bool hasCompletedAt() => _completedAt != null;

  // "shippingLabel" field.
  String? _shippingLabel;
  String get shippingLabel => _shippingLabel ?? '';
  bool hasShippingLabel() => _shippingLabel != null;

  // "trackingNumber" field.
  String? _trackingNumber;
  String get trackingNumber => _trackingNumber ?? '';
  bool hasTrackingNumber() => _trackingNumber != null;

  // "payment_intent" field.
  String? _paymentIntent;
  String get paymentIntent => _paymentIntent ?? '';
  bool hasPaymentIntent() => _paymentIntent != null;

  void _initializeFields() {
    _listingId = snapshotData['listingId'] as DocumentReference?;
    _buyerId = snapshotData['buyerId'] as DocumentReference?;
    _sellerId = snapshotData['sellerId'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _fairwayExchangeFee =
        castToType<double>(snapshotData['fairwayExchangeFee']);
    _sellerPayout = castToType<double>(snapshotData['sellerPayout']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _completedAt = snapshotData['completedAt'] as DateTime?;
    _shippingLabel = snapshotData['shippingLabel'] as String?;
    _trackingNumber = snapshotData['trackingNumber'] as String?;
    _paymentIntent = snapshotData['payment_intent'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  DocumentReference? listingId,
  DocumentReference? buyerId,
  DocumentReference? sellerId,
  double? amount,
  double? fairwayExchangeFee,
  double? sellerPayout,
  String? status,
  DateTime? createdAt,
  DateTime? completedAt,
  String? shippingLabel,
  String? trackingNumber,
  String? paymentIntent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'listingId': listingId,
      'buyerId': buyerId,
      'sellerId': sellerId,
      'amount': amount,
      'fairwayExchangeFee': fairwayExchangeFee,
      'sellerPayout': sellerPayout,
      'status': status,
      'createdAt': createdAt,
      'completedAt': completedAt,
      'shippingLabel': shippingLabel,
      'trackingNumber': trackingNumber,
      'payment_intent': paymentIntent,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.listingId == e2?.listingId &&
        e1?.buyerId == e2?.buyerId &&
        e1?.sellerId == e2?.sellerId &&
        e1?.amount == e2?.amount &&
        e1?.fairwayExchangeFee == e2?.fairwayExchangeFee &&
        e1?.sellerPayout == e2?.sellerPayout &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.completedAt == e2?.completedAt &&
        e1?.shippingLabel == e2?.shippingLabel &&
        e1?.trackingNumber == e2?.trackingNumber &&
        e1?.paymentIntent == e2?.paymentIntent;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.listingId,
        e?.buyerId,
        e?.sellerId,
        e?.amount,
        e?.fairwayExchangeFee,
        e?.sellerPayout,
        e?.status,
        e?.createdAt,
        e?.completedAt,
        e?.shippingLabel,
        e?.trackingNumber,
        e?.paymentIntent
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
