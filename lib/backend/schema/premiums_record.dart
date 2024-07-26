import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PremiumsRecord extends FirestoreRecord {
  PremiumsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email_user" field.
  String? _emailUser;
  String get emailUser => _emailUser ?? '';
  bool hasEmailUser() => _emailUser != null;

  // "type_premium" field.
  String? _typePremium;
  String get typePremium => _typePremium ?? '';
  bool hasTypePremium() => _typePremium != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _emailUser = snapshotData['email_user'] as String?;
    _typePremium = snapshotData['type_premium'] as String?;
    _userId = snapshotData['user_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('premiums');

  static Stream<PremiumsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PremiumsRecord.fromSnapshot(s));

  static Future<PremiumsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PremiumsRecord.fromSnapshot(s));

  static PremiumsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PremiumsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PremiumsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PremiumsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PremiumsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PremiumsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPremiumsRecordData({
  String? emailUser,
  String? typePremium,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email_user': emailUser,
      'type_premium': typePremium,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class PremiumsRecordDocumentEquality implements Equality<PremiumsRecord> {
  const PremiumsRecordDocumentEquality();

  @override
  bool equals(PremiumsRecord? e1, PremiumsRecord? e2) {
    return e1?.emailUser == e2?.emailUser &&
        e1?.typePremium == e2?.typePremium &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(PremiumsRecord? e) =>
      const ListEquality().hash([e?.emailUser, e?.typePremium, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is PremiumsRecord;
}
