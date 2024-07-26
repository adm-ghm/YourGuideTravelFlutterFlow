// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardsStruct extends FFFirebaseStruct {
  CardsStruct({
    int? number,
    String? name,
    int? cvv,
    DateTime? dateexp,
    String? userid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _number = number,
        _name = name,
        _cvv = cvv,
        _dateexp = dateexp,
        _userid = userid,
        super(firestoreUtilData);

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "cvv" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  set cvv(int? val) => _cvv = val;

  void incrementCvv(int amount) => cvv = cvv + amount;

  bool hasCvv() => _cvv != null;

  // "dateexp" field.
  DateTime? _dateexp;
  DateTime? get dateexp => _dateexp;
  set dateexp(DateTime? val) => _dateexp = val;

  bool hasDateexp() => _dateexp != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  set userid(String? val) => _userid = val;

  bool hasUserid() => _userid != null;

  static CardsStruct fromMap(Map<String, dynamic> data) => CardsStruct(
        number: castToType<int>(data['number']),
        name: data['name'] as String?,
        cvv: castToType<int>(data['cvv']),
        dateexp: data['dateexp'] as DateTime?,
        userid: data['userid'] as String?,
      );

  static CardsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'number': _number,
        'name': _name,
        'cvv': _cvv,
        'dateexp': _dateexp,
        'userid': _userid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'cvv': serializeParam(
          _cvv,
          ParamType.int,
        ),
        'dateexp': serializeParam(
          _dateexp,
          ParamType.DateTime,
        ),
        'userid': serializeParam(
          _userid,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardsStruct(
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        cvv: deserializeParam(
          data['cvv'],
          ParamType.int,
          false,
        ),
        dateexp: deserializeParam(
          data['dateexp'],
          ParamType.DateTime,
          false,
        ),
        userid: deserializeParam(
          data['userid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardsStruct &&
        number == other.number &&
        name == other.name &&
        cvv == other.cvv &&
        dateexp == other.dateexp &&
        userid == other.userid;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([number, name, cvv, dateexp, userid]);
}

CardsStruct createCardsStruct({
  int? number,
  String? name,
  int? cvv,
  DateTime? dateexp,
  String? userid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CardsStruct(
      number: number,
      name: name,
      cvv: cvv,
      dateexp: dateexp,
      userid: userid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CardsStruct? updateCardsStruct(
  CardsStruct? cards, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cards
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCardsStructData(
  Map<String, dynamic> firestoreData,
  CardsStruct? cards,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cards == null) {
    return;
  }
  if (cards.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cards.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cardsData = getCardsFirestoreData(cards, forFieldValue);
  final nestedData = cardsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cards.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCardsFirestoreData(
  CardsStruct? cards, [
  bool forFieldValue = false,
]) {
  if (cards == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cards.toMap());

  // Add any Firestore field values
  cards.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCardsListFirestoreData(
  List<CardsStruct>? cardss,
) =>
    cardss?.map((e) => getCardsFirestoreData(e, true)).toList() ?? [];
