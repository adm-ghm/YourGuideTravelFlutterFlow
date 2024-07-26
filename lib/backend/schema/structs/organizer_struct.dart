// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizerStruct extends FFFirebaseStruct {
  OrganizerStruct({
    String? organizer,
    String? slug,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _organizer = organizer,
        _slug = slug,
        super(firestoreUtilData);

  // "organizer" field.
  String? _organizer;
  String get organizer => _organizer ?? '';
  set organizer(String? val) => _organizer = val;

  bool hasOrganizer() => _organizer != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  static OrganizerStruct fromMap(Map<String, dynamic> data) => OrganizerStruct(
        organizer: data['organizer'] as String?,
        slug: data['slug'] as String?,
      );

  static OrganizerStruct? maybeFromMap(dynamic data) => data is Map
      ? OrganizerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'organizer': _organizer,
        'slug': _slug,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'organizer': serializeParam(
          _organizer,
          ParamType.String,
        ),
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrganizerStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrganizerStruct(
        organizer: deserializeParam(
          data['organizer'],
          ParamType.String,
          false,
        ),
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrganizerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrganizerStruct &&
        organizer == other.organizer &&
        slug == other.slug;
  }

  @override
  int get hashCode => const ListEquality().hash([organizer, slug]);
}

OrganizerStruct createOrganizerStruct({
  String? organizer,
  String? slug,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrganizerStruct(
      organizer: organizer,
      slug: slug,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrganizerStruct? updateOrganizerStruct(
  OrganizerStruct? organizerStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    organizerStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrganizerStructData(
  Map<String, dynamic> firestoreData,
  OrganizerStruct? organizerStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (organizerStruct == null) {
    return;
  }
  if (organizerStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && organizerStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final organizerStructData =
      getOrganizerFirestoreData(organizerStruct, forFieldValue);
  final nestedData =
      organizerStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = organizerStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrganizerFirestoreData(
  OrganizerStruct? organizerStruct, [
  bool forFieldValue = false,
]) {
  if (organizerStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(organizerStruct.toMap());

  // Add any Firestore field values
  organizerStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrganizerListFirestoreData(
  List<OrganizerStruct>? organizerStructs,
) =>
    organizerStructs?.map((e) => getOrganizerFirestoreData(e, true)).toList() ??
    [];
