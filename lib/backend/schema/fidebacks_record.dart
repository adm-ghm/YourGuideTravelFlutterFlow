import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FidebacksRecord extends FirestoreRecord {
  FidebacksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fideback_text" field.
  String? _fidebackText;
  String get fidebackText => _fidebackText ?? '';
  bool hasFidebackText() => _fidebackText != null;

  // "date_fed" field.
  DateTime? _dateFed;
  DateTime? get dateFed => _dateFed;
  bool hasDateFed() => _dateFed != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _fidebackText = snapshotData['fideback_text'] as String?;
    _dateFed = snapshotData['date_fed'] as DateTime?;
    _userId = snapshotData['user_id'] as String?;
    _rating = snapshotData['rating'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fidebacks');

  static Stream<FidebacksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FidebacksRecord.fromSnapshot(s));

  static Future<FidebacksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FidebacksRecord.fromSnapshot(s));

  static FidebacksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FidebacksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FidebacksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FidebacksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FidebacksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FidebacksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFidebacksRecordData({
  String? fidebackText,
  DateTime? dateFed,
  String? userId,
  String? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fideback_text': fidebackText,
      'date_fed': dateFed,
      'user_id': userId,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class FidebacksRecordDocumentEquality implements Equality<FidebacksRecord> {
  const FidebacksRecordDocumentEquality();

  @override
  bool equals(FidebacksRecord? e1, FidebacksRecord? e2) {
    return e1?.fidebackText == e2?.fidebackText &&
        e1?.dateFed == e2?.dateFed &&
        e1?.userId == e2?.userId &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(FidebacksRecord? e) => const ListEquality()
      .hash([e?.fidebackText, e?.dateFed, e?.userId, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is FidebacksRecord;
}
