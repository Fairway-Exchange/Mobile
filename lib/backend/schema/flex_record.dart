import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlexRecord extends FirestoreRecord {
  FlexRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "flex" field.
  String? _flex;
  String get flex => _flex ?? '';
  bool hasFlex() => _flex != null;

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
    _flex = snapshotData['flex'] as String?;
    _clubType = snapshotData['clubType'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _updatedDate = snapshotData['updated_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flex');

  static Stream<FlexRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlexRecord.fromSnapshot(s));

  static Future<FlexRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlexRecord.fromSnapshot(s));

  static FlexRecord fromSnapshot(DocumentSnapshot snapshot) => FlexRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlexRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlexRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlexRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlexRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlexRecordData({
  String? flex,
  String? clubType,
  DateTime? createdDate,
  DateTime? updatedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'flex': flex,
      'clubType': clubType,
      'created_date': createdDate,
      'updated_date': updatedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlexRecordDocumentEquality implements Equality<FlexRecord> {
  const FlexRecordDocumentEquality();

  @override
  bool equals(FlexRecord? e1, FlexRecord? e2) {
    return e1?.flex == e2?.flex &&
        e1?.clubType == e2?.clubType &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedDate == e2?.updatedDate;
  }

  @override
  int hash(FlexRecord? e) => const ListEquality()
      .hash([e?.flex, e?.clubType, e?.createdDate, e?.updatedDate]);

  @override
  bool isValidKey(Object? o) => o is FlexRecord;
}
