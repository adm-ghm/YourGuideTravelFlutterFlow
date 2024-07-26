// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnancesStruct extends FFFirebaseStruct {
  AnnancesStruct({
    String? title,
    String? description,
    String? image,
    DateTime? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _image = image,
        _date = date,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  static AnnancesStruct fromMap(Map<String, dynamic> data) => AnnancesStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
        date: data['date'] as DateTime?,
      );

  static AnnancesStruct? maybeFromMap(dynamic data) =>
      data is Map ? AnnancesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'image': _image,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AnnancesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AnnancesStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'AnnancesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AnnancesStruct &&
        title == other.title &&
        description == other.description &&
        image == other.image &&
        date == other.date;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, image, date]);
}

AnnancesStruct createAnnancesStruct({
  String? title,
  String? description,
  String? image,
  DateTime? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AnnancesStruct(
      title: title,
      description: description,
      image: image,
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AnnancesStruct? updateAnnancesStruct(
  AnnancesStruct? annances, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    annances
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAnnancesStructData(
  Map<String, dynamic> firestoreData,
  AnnancesStruct? annances,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (annances == null) {
    return;
  }
  if (annances.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && annances.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final annancesData = getAnnancesFirestoreData(annances, forFieldValue);
  final nestedData = annancesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = annances.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAnnancesFirestoreData(
  AnnancesStruct? annances, [
  bool forFieldValue = false,
]) {
  if (annances == null) {
    return {};
  }
  final firestoreData = mapToFirestore(annances.toMap());

  // Add any Firestore field values
  annances.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAnnancesListFirestoreData(
  List<AnnancesStruct>? annancess,
) =>
    annancess?.map((e) => getAnnancesFirestoreData(e, true)).toList() ?? [];
