import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoftsRecord extends FirestoreRecord {
  LoftsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "updated_date" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "bounce" field.
  String? _bounce;
  String get bounce => _bounce ?? '';
  bool hasBounce() => _bounce != null;

  // "loft" field.
  String? _loft;
  String get loft => _loft ?? '';
  bool hasLoft() => _loft != null;

  // "clubType" field.
  String? _clubType;
  String get clubType => _clubType ?? '';
  bool hasClubType() => _clubType != null;

  void _initializeFields() {
    _updatedDate = snapshotData['updated_date'] as DateTime?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _bounce = snapshotData['bounce'] as String?;
    _loft = snapshotData['loft'] as String?;
    _clubType = snapshotData['clubType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lofts');

  static Stream<LoftsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LoftsRecord.fromSnapshot(s));

  static Future<LoftsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LoftsRecord.fromSnapshot(s));

  static LoftsRecord fromSnapshot(DocumentSnapshot snapshot) => LoftsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LoftsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LoftsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LoftsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LoftsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoftsRecordData({
  DateTime? updatedDate,
  DateTime? createdDate,
  String? bounce,
  String? loft,
  String? clubType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'updated_date': updatedDate,
      'created_date': createdDate,
      'bounce': bounce,
      'loft': loft,
      'clubType': clubType,
    }.withoutNulls,
  );

  return firestoreData;
}

class LoftsRecordDocumentEquality implements Equality<LoftsRecord> {
  const LoftsRecordDocumentEquality();

  @override
  bool equals(LoftsRecord? e1, LoftsRecord? e2) {
    return e1?.updatedDate == e2?.updatedDate &&
        e1?.createdDate == e2?.createdDate &&
        e1?.bounce == e2?.bounce &&
        e1?.loft == e2?.loft &&
        e1?.clubType == e2?.clubType;
  }

  @override
  int hash(LoftsRecord? e) => const ListEquality()
      .hash([e?.updatedDate, e?.createdDate, e?.bounce, e?.loft, e?.clubType]);

  @override
  bool isValidKey(Object? o) => o is LoftsRecord;
}
