import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommandRecord extends FirestoreRecord {
  CommandRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "command_number" field.
  int? _commandNumber;
  int get commandNumber => _commandNumber ?? 0;
  bool hasCommandNumber() => _commandNumber != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "cardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  bool hasCardNumber() => _cardNumber != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _commandNumber = castToType<int>(snapshotData['command_number']);
    _price = castToType<double>(snapshotData['Price']);
    _cardNumber = castToType<int>(snapshotData['cardNumber']);
    _userId = snapshotData['user_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('command');

  static Stream<CommandRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommandRecord.fromSnapshot(s));

  static Future<CommandRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommandRecord.fromSnapshot(s));

  static CommandRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommandRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommandRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommandRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommandRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommandRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommandRecordData({
  String? status,
  DateTime? createdAt,
  int? commandNumber,
  double? price,
  int? cardNumber,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'created_at': createdAt,
      'command_number': commandNumber,
      'Price': price,
      'cardNumber': cardNumber,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommandRecordDocumentEquality implements Equality<CommandRecord> {
  const CommandRecordDocumentEquality();

  @override
  bool equals(CommandRecord? e1, CommandRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.commandNumber == e2?.commandNumber &&
        e1?.price == e2?.price &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(CommandRecord? e) => const ListEquality().hash([
        e?.status,
        e?.createdAt,
        e?.commandNumber,
        e?.price,
        e?.cardNumber,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is CommandRecord;
}
