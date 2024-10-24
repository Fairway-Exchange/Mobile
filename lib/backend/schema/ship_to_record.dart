import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipToRecord extends FirestoreRecord {
  ShipToRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  bool hasAddress1() => _address1 != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  bool hasAddress2() => _address2 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  bool hasPostalCode() => _postalCode != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _address1 = snapshotData['address1'] as String?;
    _address2 = snapshotData['address2'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _postalCode = snapshotData['postalCode'] as String?;
    _country = snapshotData['country'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shipTo');

  static Stream<ShipToRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShipToRecord.fromSnapshot(s));

  static Future<ShipToRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShipToRecord.fromSnapshot(s));

  static ShipToRecord fromSnapshot(DocumentSnapshot snapshot) => ShipToRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShipToRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShipToRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShipToRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShipToRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShipToRecordData({
  DocumentReference? userId,
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? postalCode,
  String? country,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'address1': address1,
      'address2': address2,
      'city': city,
      'state': state,
      'postalCode': postalCode,
      'country': country,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShipToRecordDocumentEquality implements Equality<ShipToRecord> {
  const ShipToRecordDocumentEquality();

  @override
  bool equals(ShipToRecord? e1, ShipToRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.address1 == e2?.address1 &&
        e1?.address2 == e2?.address2 &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.postalCode == e2?.postalCode &&
        e1?.country == e2?.country;
  }

  @override
  int hash(ShipToRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.address1,
        e?.address2,
        e?.city,
        e?.state,
        e?.postalCode,
        e?.country
      ]);

  @override
  bool isValidKey(Object? o) => o is ShipToRecord;
}
