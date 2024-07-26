import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuidsRecord extends FirestoreRecord {
  GuidsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "contry" field.
  String? _contry;
  String get contry => _contry ?? '';
  bool hasContry() => _contry != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "size" field.
  double? _size;
  double get size => _size ?? 0.0;
  bool hasSize() => _size != null;

  // "lentgh" field.
  int? _lentgh;
  int get lentgh => _lentgh ?? 0;
  bool hasLentgh() => _lentgh != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _contry = snapshotData['contry'] as String?;
    _photo = snapshotData['photo'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _size = castToType<double>(snapshotData['size']);
    _lentgh = castToType<int>(snapshotData['lentgh']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guids');

  static Stream<GuidsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuidsRecord.fromSnapshot(s));

  static Future<GuidsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GuidsRecord.fromSnapshot(s));

  static GuidsRecord fromSnapshot(DocumentSnapshot snapshot) => GuidsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuidsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuidsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuidsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuidsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuidsRecordData({
  String? name,
  String? contry,
  String? photo,
  String? description,
  double? price,
  double? size,
  int? lentgh,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'contry': contry,
      'photo': photo,
      'description': description,
      'price': price,
      'size': size,
      'lentgh': lentgh,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuidsRecordDocumentEquality implements Equality<GuidsRecord> {
  const GuidsRecordDocumentEquality();

  @override
  bool equals(GuidsRecord? e1, GuidsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.contry == e2?.contry &&
        e1?.photo == e2?.photo &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.size == e2?.size &&
        e1?.lentgh == e2?.lentgh;
  }

  @override
  int hash(GuidsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.contry,
        e?.photo,
        e?.description,
        e?.price,
        e?.size,
        e?.lentgh
      ]);

  @override
  bool isValidKey(Object? o) => o is GuidsRecord;
}
