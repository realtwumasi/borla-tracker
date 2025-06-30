import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class User1Record extends FirestoreRecord {
  User1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

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

  // "accountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "nickName" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  bool hasNickName() => _nickName != null;

  // "min_amount_user2" field.
  double? _minAmountUser2;
  double get minAmountUser2 => _minAmountUser2 ?? 0.0;
  bool hasMinAmountUser2() => _minAmountUser2 != null;

  // "status_user2" field.
  bool? _statusUser2;
  bool get statusUser2 => _statusUser2 ?? false;
  bool hasStatusUser2() => _statusUser2 != null;

  // "vehicle_user2" field.
  String? _vehicleUser2;
  String get vehicleUser2 => _vehicleUser2 ?? '';
  bool hasVehicleUser2() => _vehicleUser2 != null;

  // "working_days_user2" field.
  String? _workingDaysUser2;
  String get workingDaysUser2 => _workingDaysUser2 ?? '';
  bool hasWorkingDaysUser2() => _workingDaysUser2 != null;

  // "trash_img_user1" field.
  String? _trashImgUser1;
  String get trashImgUser1 => _trashImgUser1 ?? '';
  bool hasTrashImgUser1() => _trashImgUser1 != null;

  // "profile_img" field.
  String? _profileImg;
  String get profileImg => _profileImg ?? '';
  bool hasProfileImg() => _profileImg != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _location = snapshotData['location'] as String?;
    _gender = snapshotData['gender'] as String?;
    _accountType = snapshotData['accountType'] as String?;
    _nickName = snapshotData['nickName'] as String?;
    _minAmountUser2 = castToType<double>(snapshotData['min_amount_user2']);
    _statusUser2 = snapshotData['status_user2'] as bool?;
    _vehicleUser2 = snapshotData['vehicle_user2'] as String?;
    _workingDaysUser2 = snapshotData['working_days_user2'] as String?;
    _trashImgUser1 = snapshotData['trash_img_user1'] as String?;
    _profileImg = snapshotData['profile_img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user1');

  static Stream<User1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => User1Record.fromSnapshot(s));

  static Future<User1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => User1Record.fromSnapshot(s));

  static User1Record fromSnapshot(DocumentSnapshot snapshot) => User1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static User1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      User1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'User1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is User1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUser1RecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? lastName,
  String? location,
  String? gender,
  String? accountType,
  String? nickName,
  double? minAmountUser2,
  bool? statusUser2,
  String? vehicleUser2,
  String? workingDaysUser2,
  String? trashImgUser1,
  String? profileImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'firstName': firstName,
      'lastName': lastName,
      'location': location,
      'gender': gender,
      'accountType': accountType,
      'nickName': nickName,
      'min_amount_user2': minAmountUser2,
      'status_user2': statusUser2,
      'vehicle_user2': vehicleUser2,
      'working_days_user2': workingDaysUser2,
      'trash_img_user1': trashImgUser1,
      'profile_img': profileImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class User1RecordDocumentEquality implements Equality<User1Record> {
  const User1RecordDocumentEquality();

  @override
  bool equals(User1Record? e1, User1Record? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.location == e2?.location &&
        e1?.gender == e2?.gender &&
        e1?.accountType == e2?.accountType &&
        e1?.nickName == e2?.nickName &&
        e1?.minAmountUser2 == e2?.minAmountUser2 &&
        e1?.statusUser2 == e2?.statusUser2 &&
        e1?.vehicleUser2 == e2?.vehicleUser2 &&
        e1?.workingDaysUser2 == e2?.workingDaysUser2 &&
        e1?.trashImgUser1 == e2?.trashImgUser1 &&
        e1?.profileImg == e2?.profileImg;
  }

  @override
  int hash(User1Record? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.firstName,
        e?.lastName,
        e?.location,
        e?.gender,
        e?.accountType,
        e?.nickName,
        e?.minAmountUser2,
        e?.statusUser2,
        e?.vehicleUser2,
        e?.workingDaysUser2,
        e?.trashImgUser1,
        e?.profileImg
      ]);

  @override
  bool isValidKey(Object? o) => o is User1Record;
}
