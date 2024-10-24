import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubsRecord extends FirestoreRecord {
  ClubsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "clubType" field.
  String? _clubType;
  String get clubType => _clubType ?? '';
  bool hasClubType() => _clubType != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "shaft" field.
  String? _shaft;
  String get shaft => _shaft ?? '';
  bool hasShaft() => _shaft != null;

  // "loft" field.
  double? _loft;
  double get loft => _loft ?? 0.0;
  bool hasLoft() => _loft != null;

  // "flex" field.
  String? _flex;
  String get flex => _flex ?? '';
  bool hasFlex() => _flex != null;

  // "bounce" field.
  double? _bounce;
  double get bounce => _bounce ?? 0.0;
  bool hasBounce() => _bounce != null;

  void _initializeFields() {
    _clubType = snapshotData['clubType'] as String?;
    _brand = snapshotData['brand'] as String?;
    _model = snapshotData['model'] as String?;
    _shaft = snapshotData['shaft'] as String?;
    _loft = castToType<double>(snapshotData['loft']);
    _flex = snapshotData['flex'] as String?;
    _bounce = castToType<double>(snapshotData['bounce']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubs');

  static Stream<ClubsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubsRecord.fromSnapshot(s));

  static Future<ClubsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubsRecord.fromSnapshot(s));

  static ClubsRecord fromSnapshot(DocumentSnapshot snapshot) => ClubsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubsRecordData({
  String? clubType,
  String? brand,
  String? model,
  String? shaft,
  double? loft,
  String? flex,
  double? bounce,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clubType': clubType,
      'brand': brand,
      'model': model,
      'shaft': shaft,
      'loft': loft,
      'flex': flex,
      'bounce': bounce,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsRecordDocumentEquality implements Equality<ClubsRecord> {
  const ClubsRecordDocumentEquality();

  @override
  bool equals(ClubsRecord? e1, ClubsRecord? e2) {
    return e1?.clubType == e2?.clubType &&
        e1?.brand == e2?.brand &&
        e1?.model == e2?.model &&
        e1?.shaft == e2?.shaft &&
        e1?.loft == e2?.loft &&
        e1?.flex == e2?.flex &&
        e1?.bounce == e2?.bounce;
  }

  @override
  int hash(ClubsRecord? e) => const ListEquality().hash(
      [e?.clubType, e?.brand, e?.model, e?.shaft, e?.loft, e?.flex, e?.bounce]);

  @override
  bool isValidKey(Object? o) => o is ClubsRecord;
}
