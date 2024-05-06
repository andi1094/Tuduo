import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class StudycourseRecord extends FirestoreRecord {
  StudycourseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('studycourse');

  static Stream<StudycourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudycourseRecord.fromSnapshot(s));

  static Future<StudycourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudycourseRecord.fromSnapshot(s));

  static StudycourseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudycourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudycourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudycourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudycourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudycourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudycourseRecordData({
  String? name,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudycourseRecordDocumentEquality implements Equality<StudycourseRecord> {
  const StudycourseRecordDocumentEquality();

  @override
  bool equals(StudycourseRecord? e1, StudycourseRecord? e2) {
    return e1?.name == e2?.name && e1?.category == e2?.category;
  }

  @override
  int hash(StudycourseRecord? e) =>
      const ListEquality().hash([e?.name, e?.category]);

  @override
  bool isValidKey(Object? o) => o is StudycourseRecord;
}
