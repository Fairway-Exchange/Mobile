import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShaftsRecord extends FirestoreRecord {
  ShaftsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "shaft" field.
  String? _shaft;
  String get shaft => _shaft ?? '';
  bool hasShaft() => _shaft != null;

  // "clubType" field.
  String? _clubType;
  String get clubType => _clubType ?? '';
  bool hasClubType() => _clubType != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "updated_date" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  void _initializeFields() {
    _shaft = snapshotData['shaft'] as String?;
    _clubType = snapshotData['clubType'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _updatedDate = snapshotData['updated_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shafts');

  static Stream<ShaftsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShaftsRecord.fromSnapshot(s));

  static Future<ShaftsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShaftsRecord.fromSnapshot(s));

  static ShaftsRecord fromSnapshot(DocumentSnapshot snapshot) => ShaftsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShaftsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShaftsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShaftsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShaftsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShaftsRecordData({
  String? shaft,
  String? clubType,
  DateTime? createdDate,
  DateTime? updatedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'shaft': shaft,
      'clubType': clubType,
      'created_date': createdDate,
      'updated_date': updatedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShaftsRecordDocumentEquality implements Equality<ShaftsRecord> {
  const ShaftsRecordDocumentEquality();

  @override
  bool equals(ShaftsRecord? e1, ShaftsRecord? e2) {
    return e1?.shaft == e2?.shaft &&
        e1?.clubType == e2?.clubType &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedDate == e2?.updatedDate;
  }

  @override
  int hash(ShaftsRecord? e) => const ListEquality()
      .hash([e?.shaft, e?.clubType, e?.createdDate, e?.updatedDate]);

  @override
  bool isValidKey(Object? o) => o is ShaftsRecord;
}
