import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckoutsRecord extends FirestoreRecord {
  CheckoutsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "orderid" field.
  DocumentReference? _orderid;
  DocumentReference? get orderid => _orderid;
  bool hasOrderid() => _orderid != null;

  // "date_transaction" field.
  DateTime? _dateTransaction;
  DateTime? get dateTransaction => _dateTransaction;
  bool hasDateTransaction() => _dateTransaction != null;

  // "emailgift" field.
  String? _emailgift;
  String get emailgift => _emailgift ?? '';
  bool hasEmailgift() => _emailgift != null;

  // "messagegift" field.
  String? _messagegift;
  String get messagegift => _messagegift ?? '';
  bool hasMessagegift() => _messagegift != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  void _initializeFields() {
    _total = castToType<double>(snapshotData['total']);
    _orderid = snapshotData['orderid'] as DocumentReference?;
    _dateTransaction = snapshotData['date_transaction'] as DateTime?;
    _emailgift = snapshotData['emailgift'] as String?;
    _messagegift = snapshotData['messagegift'] as String?;
    _userid = snapshotData['userid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('checkouts');

  static Stream<CheckoutsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CheckoutsRecord.fromSnapshot(s));

  static Future<CheckoutsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CheckoutsRecord.fromSnapshot(s));

  static CheckoutsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CheckoutsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CheckoutsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CheckoutsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CheckoutsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CheckoutsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCheckoutsRecordData({
  double? total,
  DocumentReference? orderid,
  DateTime? dateTransaction,
  String? emailgift,
  String? messagegift,
  String? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total': total,
      'orderid': orderid,
      'date_transaction': dateTransaction,
      'emailgift': emailgift,
      'messagegift': messagegift,
      'userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class CheckoutsRecordDocumentEquality implements Equality<CheckoutsRecord> {
  const CheckoutsRecordDocumentEquality();

  @override
  bool equals(CheckoutsRecord? e1, CheckoutsRecord? e2) {
    return e1?.total == e2?.total &&
        e1?.orderid == e2?.orderid &&
        e1?.dateTransaction == e2?.dateTransaction &&
        e1?.emailgift == e2?.emailgift &&
        e1?.messagegift == e2?.messagegift &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(CheckoutsRecord? e) => const ListEquality().hash([
        e?.total,
        e?.orderid,
        e?.dateTransaction,
        e?.emailgift,
        e?.messagegift,
        e?.userid
      ]);

  @override
  bool isValidKey(Object? o) => o is CheckoutsRecord;
}
