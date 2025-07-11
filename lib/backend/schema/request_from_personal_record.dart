import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestFromPersonalRecord extends FirestoreRecord {
  RequestFromPersonalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "trash_img" field.
  String? _trashImg;
  String get trashImg => _trashImg ?? '';
  bool hasTrashImg() => _trashImg != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "profile_image" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "wasteManagerID" field.
  String? _wasteManagerID;
  String get wasteManagerID => _wasteManagerID ?? '';
  bool hasWasteManagerID() => _wasteManagerID != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "is_done" field.
  bool? _isDone;
  bool get isDone => _isDone ?? false;
  bool hasIsDone() => _isDone != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "time_complete" field.
  DateTime? _timeComplete;
  DateTime? get timeComplete => _timeComplete;
  bool hasTimeComplete() => _timeComplete != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _trashImg = snapshotData['trash_img'] as String?;
    _location = snapshotData['location'] as String?;
    _contact = snapshotData['contact'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _profileImage = snapshotData['profile_image'] as String?;
    _wasteManagerID = snapshotData['wasteManagerID'] as String?;
    _status = snapshotData['status'] as String?;
    _isDone = snapshotData['is_done'] as bool?;
    _time = snapshotData['time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _timeComplete = snapshotData['time_complete'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request_from_personal');

  static Stream<RequestFromPersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestFromPersonalRecord.fromSnapshot(s));

  static Future<RequestFromPersonalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RequestFromPersonalRecord.fromSnapshot(s));

  static RequestFromPersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestFromPersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestFromPersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestFromPersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestFromPersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestFromPersonalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestFromPersonalRecordData({
  String? uid,
  String? trashImg,
  String? location,
  String? contact,
  String? firstName,
  String? profileImage,
  String? wasteManagerID,
  String? status,
  bool? isDone,
  DateTime? time,
  DateTime? editedTime,
  DateTime? timeComplete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'trash_img': trashImg,
      'location': location,
      'contact': contact,
      'firstName': firstName,
      'profile_image': profileImage,
      'wasteManagerID': wasteManagerID,
      'status': status,
      'is_done': isDone,
      'time': time,
      'edited_time': editedTime,
      'time_complete': timeComplete,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestFromPersonalRecordDocumentEquality
    implements Equality<RequestFromPersonalRecord> {
  const RequestFromPersonalRecordDocumentEquality();

  @override
  bool equals(RequestFromPersonalRecord? e1, RequestFromPersonalRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.trashImg == e2?.trashImg &&
        e1?.location == e2?.location &&
        e1?.contact == e2?.contact &&
        e1?.firstName == e2?.firstName &&
        e1?.profileImage == e2?.profileImage &&
        e1?.wasteManagerID == e2?.wasteManagerID &&
        e1?.status == e2?.status &&
        e1?.isDone == e2?.isDone &&
        e1?.time == e2?.time &&
        e1?.editedTime == e2?.editedTime &&
        e1?.timeComplete == e2?.timeComplete;
  }

  @override
  int hash(RequestFromPersonalRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.trashImg,
        e?.location,
        e?.contact,
        e?.firstName,
        e?.profileImage,
        e?.wasteManagerID,
        e?.status,
        e?.isDone,
        e?.time,
        e?.editedTime,
        e?.timeComplete
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestFromPersonalRecord;
}
