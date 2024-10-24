import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceHistoryRecord extends FirestoreRecord {
  PriceHistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "clubType" field.
  String? _clubType;
  String get clubType => _clubType ?? '';
  bool hasClubType() => _clubType != null;

  // "modelName" field.
  String? _modelName;
  String get modelName => _modelName ?? '';
  bool hasModelName() => _modelName != null;

  // "shaft" field.
  String? _shaft;
  String get shaft => _shaft ?? '';
  bool hasShaft() => _shaft != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "handedness" field.
  String? _handedness;
  String get handedness => _handedness ?? '';
  bool hasHandedness() => _handedness != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "soldAt" field.
  DateTime? _soldAt;
  DateTime? get soldAt => _soldAt;
  bool hasSoldAt() => _soldAt != null;

  // "sellerRef" field.
  DocumentReference? _sellerRef;
  DocumentReference? get sellerRef => _sellerRef;
  bool hasSellerRef() => _sellerRef != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _clubType = snapshotData['clubType'] as String?;
    _modelName = snapshotData['modelName'] as String?;
    _shaft = snapshotData['shaft'] as String?;
    _condition = snapshotData['condition'] as String?;
    _handedness = snapshotData['handedness'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _soldAt = snapshotData['soldAt'] as DateTime?;
    _sellerRef = snapshotData['sellerRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('priceHistory');

  static Stream<PriceHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PriceHistoryRecord.fromSnapshot(s));

  static Future<PriceHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PriceHistoryRecord.fromSnapshot(s));

  static PriceHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PriceHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PriceHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PriceHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PriceHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PriceHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPriceHistoryRecordData({
  String? id,
  String? clubType,
  String? modelName,
  String? shaft,
  String? condition,
  String? handedness,
  double? price,
  DateTime? soldAt,
  DocumentReference? sellerRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'clubType': clubType,
      'modelName': modelName,
      'shaft': shaft,
      'condition': condition,
      'handedness': handedness,
      'price': price,
      'soldAt': soldAt,
      'sellerRef': sellerRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PriceHistoryRecordDocumentEquality
    implements Equality<PriceHistoryRecord> {
  const PriceHistoryRecordDocumentEquality();

  @override
  bool equals(PriceHistoryRecord? e1, PriceHistoryRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.clubType == e2?.clubType &&
        e1?.modelName == e2?.modelName &&
        e1?.shaft == e2?.shaft &&
        e1?.condition == e2?.condition &&
        e1?.handedness == e2?.handedness &&
        e1?.price == e2?.price &&
        e1?.soldAt == e2?.soldAt &&
        e1?.sellerRef == e2?.sellerRef;
  }

  @override
  int hash(PriceHistoryRecord? e) => const ListEquality().hash([
        e?.id,
        e?.clubType,
        e?.modelName,
        e?.shaft,
        e?.condition,
        e?.handedness,
        e?.price,
        e?.soldAt,
        e?.sellerRef
      ]);

  @override
  bool isValidKey(Object? o) => o is PriceHistoryRecord;
}
