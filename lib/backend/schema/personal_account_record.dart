import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonalAccountRecord extends FirestoreRecord {
  PersonalAccountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "profile_img_personal" field.
  String? _profileImgPersonal;
  String get profileImgPersonal => _profileImgPersonal ?? '';
  bool hasProfileImgPersonal() => _profileImgPersonal != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _location = snapshotData['location'] as String?;
    _gender = snapshotData['gender'] as String?;
    _accountType = snapshotData['account_type'] as String?;
    _profileImgPersonal = snapshotData['profile_img_personal'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('personal_account');

  static Stream<PersonalAccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonalAccountRecord.fromSnapshot(s));

  static Future<PersonalAccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonalAccountRecord.fromSnapshot(s));

  static PersonalAccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonalAccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonalAccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonalAccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonalAccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonalAccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonalAccountRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? firstName,
  String? lastName,
  String? location,
  String? gender,
  String? accountType,
  String? profileImgPersonal,
  DocumentReference? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'firstName': firstName,
      'lastName': lastName,
      'location': location,
      'gender': gender,
      'account_type': accountType,
      'profile_img_personal': profileImgPersonal,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonalAccountRecordDocumentEquality
    implements Equality<PersonalAccountRecord> {
  const PersonalAccountRecordDocumentEquality();

  @override
  bool equals(PersonalAccountRecord? e1, PersonalAccountRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.location == e2?.location &&
        e1?.gender == e2?.gender &&
        e1?.accountType == e2?.accountType &&
        e1?.profileImgPersonal == e2?.profileImgPersonal &&
        e1?.users == e2?.users;
  }

  @override
  int hash(PersonalAccountRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.firstName,
        e?.lastName,
        e?.location,
        e?.gender,
        e?.accountType,
        e?.profileImgPersonal,
        e?.users
      ]);

  @override
  bool isValidKey(Object? o) => o is PersonalAccountRecord;
}
