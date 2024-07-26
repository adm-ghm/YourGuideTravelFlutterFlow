import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaniersRecord extends FirestoreRecord {
  PaniersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _userid = snapshotData['userid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paniers');

  static Stream<PaniersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaniersRecord.fromSnapshot(s));

  static Future<PaniersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaniersRecord.fromSnapshot(s));

  static PaniersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaniersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaniersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaniersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaniersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaniersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaniersRecordData({
  String? name,
  String? photo,
  double? price,
  String? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'photo': photo,
      'price': price,
      'userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaniersRecordDocumentEquality implements Equality<PaniersRecord> {
  const PaniersRecordDocumentEquality();

  @override
  bool equals(PaniersRecord? e1, PaniersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.photo == e2?.photo &&
        e1?.price == e2?.price &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(PaniersRecord? e) =>
      const ListEquality().hash([e?.name, e?.photo, e?.price, e?.userid]);

  @override
  bool isValidKey(Object? o) => o is PaniersRecord;
}
