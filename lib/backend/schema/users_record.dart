import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "birthdate" field.
  DateTime? _birthdate;
  DateTime? get birthdate => _birthdate;
  bool hasBirthdate() => _birthdate != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "gender_search" field.
  List<String>? _genderSearch;
  List<String> get genderSearch => _genderSearch ?? const [];
  bool hasGenderSearch() => _genderSearch != null;

  // "interests" field.
  List<String>? _interests;
  List<String> get interests => _interests ?? const [];
  bool hasInterests() => _interests != null;

  // "university" field.
  String? _university;
  String get university => _university ?? '';
  bool hasUniversity() => _university != null;

  // "studycourse" field.
  String? _studycourse;
  String get studycourse => _studycourse ?? '';
  bool hasStudycourse() => _studycourse != null;

  // "learnings" field.
  List<String>? _learnings;
  List<String> get learnings => _learnings ?? const [];
  bool hasLearnings() => _learnings != null;

  // "onboarding" field.
  String? _onboarding;
  String get onboarding => _onboarding ?? '';
  bool hasOnboarding() => _onboarding != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _birthdate = snapshotData['birthdate'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
    _genderSearch = getDataList(snapshotData['gender_search']);
    _interests = getDataList(snapshotData['interests']);
    _university = snapshotData['university'] as String?;
    _studycourse = snapshotData['studycourse'] as String?;
    _learnings = getDataList(snapshotData['learnings']);
    _onboarding = snapshotData['onboarding'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _photos = getDataList(snapshotData['photos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? birthdate,
  String? gender,
  String? university,
  String? studycourse,
  String? onboarding,
  String? displayName,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'birthdate': birthdate,
      'gender': gender,
      'university': university,
      'studycourse': studycourse,
      'onboarding': onboarding,
      'display_name': displayName,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.birthdate == e2?.birthdate &&
        e1?.gender == e2?.gender &&
        listEquality.equals(e1?.genderSearch, e2?.genderSearch) &&
        listEquality.equals(e1?.interests, e2?.interests) &&
        e1?.university == e2?.university &&
        e1?.studycourse == e2?.studycourse &&
        listEquality.equals(e1?.learnings, e2?.learnings) &&
        e1?.onboarding == e2?.onboarding &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        listEquality.equals(e1?.photos, e2?.photos);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.birthdate,
        e?.gender,
        e?.genderSearch,
        e?.interests,
        e?.university,
        e?.studycourse,
        e?.learnings,
        e?.onboarding,
        e?.displayName,
        e?.photoUrl,
        e?.photos
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
