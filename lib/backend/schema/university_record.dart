import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UniversityRecord extends FirestoreRecord {
  UniversityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _country = snapshotData['country'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('university');

  static Stream<UniversityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UniversityRecord.fromSnapshot(s));

  static Future<UniversityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UniversityRecord.fromSnapshot(s));

  static UniversityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UniversityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UniversityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UniversityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UniversityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UniversityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUniversityRecordData({
  String? name,
  String? country,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'country': country,
    }.withoutNulls,
  );

  return firestoreData;
}

class UniversityRecordDocumentEquality implements Equality<UniversityRecord> {
  const UniversityRecordDocumentEquality();

  @override
  bool equals(UniversityRecord? e1, UniversityRecord? e2) {
    return e1?.name == e2?.name && e1?.country == e2?.country;
  }

  @override
  int hash(UniversityRecord? e) =>
      const ListEquality().hash([e?.name, e?.country]);

  @override
  bool isValidKey(Object? o) => o is UniversityRecord;
}
