import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WasteManagementAccountRecord extends FirestoreRecord {
  WasteManagementAccountRecord._(
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

  // "nickName" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  bool hasNickName() => _nickName != null;

  // "min_amount" field.
  double? _minAmount;
  double get minAmount => _minAmount ?? 0.0;
  bool hasMinAmount() => _minAmount != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "working_days" field.
  String? _workingDays;
  String get workingDays => _workingDays ?? '';
  bool hasWorkingDays() => _workingDays != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "profile_img_waste" field.
  String? _profileImgWaste;
  String get profileImgWaste => _profileImgWaste ?? '';
  bool hasProfileImgWaste() => _profileImgWaste != null;

  // "status_1" field.
  String? _status1;
  String get status1 => _status1 ?? '';
  bool hasStatus1() => _status1 != null;

  // "profile_img" field.
  String? _profileImg;
  String get profileImg => _profileImg ?? '';
  bool hasProfileImg() => _profileImg != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _location = snapshotData['location'] as String?;
    _gender = snapshotData['gender'] as String?;
    _accountType = snapshotData['account_type'] as String?;
    _nickName = snapshotData['nickName'] as String?;
    _minAmount = castToType<double>(snapshotData['min_amount']);
    _status = snapshotData['status'] as bool?;
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _workingDays = snapshotData['working_days'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _profileImgWaste = snapshotData['profile_img_waste'] as String?;
    _status1 = snapshotData['status_1'] as String?;
    _profileImg = snapshotData['profile_img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('waste_management_account');

  static Stream<WasteManagementAccountRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => WasteManagementAccountRecord.fromSnapshot(s));

  static Future<WasteManagementAccountRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WasteManagementAccountRecord.fromSnapshot(s));

  static WasteManagementAccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WasteManagementAccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WasteManagementAccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WasteManagementAccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WasteManagementAccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WasteManagementAccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWasteManagementAccountRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? firstName,
  String? lastName,
  String? location,
  String? gender,
  String? accountType,
  String? nickName,
  double? minAmount,
  bool? status,
  String? vehicleType,
  String? workingDays,
  DocumentReference? users,
  String? profileImgWaste,
  String? status1,
  String? profileImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'firstName': firstName,
      'lastName': lastName,
      'location': location,
      'gender': gender,
      'account_type': accountType,
      'nickName': nickName,
      'min_amount': minAmount,
      'status': status,
      'vehicle_type': vehicleType,
      'working_days': workingDays,
      'users': users,
      'profile_img_waste': profileImgWaste,
      'status_1': status1,
      'profile_img': profileImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class WasteManagementAccountRecordDocumentEquality
    implements Equality<WasteManagementAccountRecord> {
  const WasteManagementAccountRecordDocumentEquality();

  @override
  bool equals(
      WasteManagementAccountRecord? e1, WasteManagementAccountRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.location == e2?.location &&
        e1?.gender == e2?.gender &&
        e1?.accountType == e2?.accountType &&
        e1?.nickName == e2?.nickName &&
        e1?.minAmount == e2?.minAmount &&
        e1?.status == e2?.status &&
        e1?.vehicleType == e2?.vehicleType &&
        e1?.workingDays == e2?.workingDays &&
        e1?.users == e2?.users &&
        e1?.profileImgWaste == e2?.profileImgWaste &&
        e1?.status1 == e2?.status1 &&
        e1?.profileImg == e2?.profileImg;
  }

  @override
  int hash(WasteManagementAccountRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.firstName,
        e?.lastName,
        e?.location,
        e?.gender,
        e?.accountType,
        e?.nickName,
        e?.minAmount,
        e?.status,
        e?.vehicleType,
        e?.workingDays,
        e?.users,
        e?.profileImgWaste,
        e?.status1,
        e?.profileImg
      ]);

  @override
  bool isValidKey(Object? o) => o is WasteManagementAccountRecord;
}
