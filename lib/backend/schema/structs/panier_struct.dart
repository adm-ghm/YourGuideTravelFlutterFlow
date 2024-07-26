// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PanierStruct extends FFFirebaseStruct {
  PanierStruct({
    String? name,
    int? price,
    String? userid,
    String? photo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _price = price,
        _userid = userid,
        _photo = photo,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  set userid(String? val) => _userid = val;

  bool hasUserid() => _userid != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  set photo(String? val) => _photo = val;

  bool hasPhoto() => _photo != null;

  static PanierStruct fromMap(Map<String, dynamic> data) => PanierStruct(
        name: data['name'] as String?,
        price: castToType<int>(data['price']),
        userid: data['userid'] as String?,
        photo: data['photo'] as String?,
      );

  static PanierStruct? maybeFromMap(dynamic data) =>
      data is Map ? PanierStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'price': _price,
        'userid': _userid,
        'photo': _photo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'userid': serializeParam(
          _userid,
          ParamType.String,
        ),
        'photo': serializeParam(
          _photo,
          ParamType.String,
        ),
      }.withoutNulls;

  static PanierStruct fromSerializableMap(Map<String, dynamic> data) =>
      PanierStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        userid: deserializeParam(
          data['userid'],
          ParamType.String,
          false,
        ),
        photo: deserializeParam(
          data['photo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PanierStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PanierStruct &&
        name == other.name &&
        price == other.price &&
        userid == other.userid &&
        photo == other.photo;
  }

  @override
  int get hashCode => const ListEquality().hash([name, price, userid, photo]);
}

PanierStruct createPanierStruct({
  String? name,
  int? price,
  String? userid,
  String? photo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PanierStruct(
      name: name,
      price: price,
      userid: userid,
      photo: photo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PanierStruct? updatePanierStruct(
  PanierStruct? panier, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    panier
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPanierStructData(
  Map<String, dynamic> firestoreData,
  PanierStruct? panier,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (panier == null) {
    return;
  }
  if (panier.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && panier.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final panierData = getPanierFirestoreData(panier, forFieldValue);
  final nestedData = panierData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = panier.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPanierFirestoreData(
  PanierStruct? panier, [
  bool forFieldValue = false,
]) {
  if (panier == null) {
    return {};
  }
  final firestoreData = mapToFirestore(panier.toMap());

  // Add any Firestore field values
  panier.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPanierListFirestoreData(
  List<PanierStruct>? paniers,
) =>
    paniers?.map((e) => getPanierFirestoreData(e, true)).toList() ?? [];
