import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnancesRecord extends FirestoreRecord {
  AnnancesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "date_pub" field.
  DateTime? _datePub;
  DateTime? get datePub => _datePub;
  bool hasDatePub() => _datePub != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _datePub = snapshotData['date_pub'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('annances');

  static Stream<AnnancesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnancesRecord.fromSnapshot(s));

  static Future<AnnancesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnancesRecord.fromSnapshot(s));

  static AnnancesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnancesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnancesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnancesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnancesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnancesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnancesRecordData({
  String? title,
  DateTime? datePub,
  String? description,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'date_pub': datePub,
      'description': description,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnancesRecordDocumentEquality implements Equality<AnnancesRecord> {
  const AnnancesRecordDocumentEquality();

  @override
  bool equals(AnnancesRecord? e1, AnnancesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.datePub == e2?.datePub &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image;
  }

  @override
  int hash(AnnancesRecord? e) => const ListEquality()
      .hash([e?.title, e?.datePub, e?.description, e?.image]);

  @override
  bool isValidKey(Object? o) => o is AnnancesRecord;
}
