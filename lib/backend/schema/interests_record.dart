import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterestsRecord extends FirestoreRecord {
  InterestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "length" field.
  double? _length;
  double get length => _length ?? 0.0;
  bool hasLength() => _length != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _length = castToType<double>(snapshotData['length']);
    _content = snapshotData['content'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('interests');

  static Stream<InterestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterestsRecord.fromSnapshot(s));

  static Future<InterestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InterestsRecord.fromSnapshot(s));

  static InterestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterestsRecordData({
  String? type,
  double? length,
  String? content,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'length': length,
      'content': content,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterestsRecordDocumentEquality implements Equality<InterestsRecord> {
  const InterestsRecordDocumentEquality();

  @override
  bool equals(InterestsRecord? e1, InterestsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.length == e2?.length &&
        e1?.content == e2?.content;
  }

  @override
  int hash(InterestsRecord? e) =>
      const ListEquality().hash([e?.type, e?.length, e?.content]);

  @override
  bool isValidKey(Object? o) => o is InterestsRecord;
}
