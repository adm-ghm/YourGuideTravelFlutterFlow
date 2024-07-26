// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TitleStruct extends FFFirebaseStruct {
  TitleStruct({
    String? rendered,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _rendered = rendered,
        super(firestoreUtilData);

  // "rendered" field.
  String? _rendered;
  String get rendered => _rendered ?? '';
  set rendered(String? val) => _rendered = val;

  bool hasRendered() => _rendered != null;

  static TitleStruct fromMap(Map<String, dynamic> data) => TitleStruct(
        rendered: data['rendered'] as String?,
      );

  static TitleStruct? maybeFromMap(dynamic data) =>
      data is Map ? TitleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'rendered': _rendered,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rendered': serializeParam(
          _rendered,
          ParamType.String,
        ),
      }.withoutNulls;

  static TitleStruct fromSerializableMap(Map<String, dynamic> data) =>
      TitleStruct(
        rendered: deserializeParam(
          data['rendered'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TitleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TitleStruct && rendered == other.rendered;
  }

  @override
  int get hashCode => const ListEquality().hash([rendered]);
}

TitleStruct createTitleStruct({
  String? rendered,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TitleStruct(
      rendered: rendered,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TitleStruct? updateTitleStruct(
  TitleStruct? title, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    title
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTitleStructData(
  Map<String, dynamic> firestoreData,
  TitleStruct? title,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (title == null) {
    return;
  }
  if (title.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && title.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final titleData = getTitleFirestoreData(title, forFieldValue);
  final nestedData = titleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = title.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTitleFirestoreData(
  TitleStruct? title, [
  bool forFieldValue = false,
]) {
  if (title == null) {
    return {};
  }
  final firestoreData = mapToFirestore(title.toMap());

  // Add any Firestore field values
  title.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTitleListFirestoreData(
  List<TitleStruct>? titles,
) =>
    titles?.map((e) => getTitleFirestoreData(e, true)).toList() ?? [];
