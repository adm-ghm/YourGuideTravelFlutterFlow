// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VenueStruct extends FFFirebaseStruct {
  VenueStruct({
    String? venue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _venue = venue,
        super(firestoreUtilData);

  // "venue" field.
  String? _venue;
  String get venue => _venue ?? '';
  set venue(String? val) => _venue = val;

  bool hasVenue() => _venue != null;

  static VenueStruct fromMap(Map<String, dynamic> data) => VenueStruct(
        venue: data['venue'] as String?,
      );

  static VenueStruct? maybeFromMap(dynamic data) =>
      data is Map ? VenueStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'venue': _venue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'venue': serializeParam(
          _venue,
          ParamType.String,
        ),
      }.withoutNulls;

  static VenueStruct fromSerializableMap(Map<String, dynamic> data) =>
      VenueStruct(
        venue: deserializeParam(
          data['venue'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VenueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VenueStruct && venue == other.venue;
  }

  @override
  int get hashCode => const ListEquality().hash([venue]);
}

VenueStruct createVenueStruct({
  String? venue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VenueStruct(
      venue: venue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VenueStruct? updateVenueStruct(
  VenueStruct? venueStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    venueStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVenueStructData(
  Map<String, dynamic> firestoreData,
  VenueStruct? venueStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (venueStruct == null) {
    return;
  }
  if (venueStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && venueStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final venueStructData = getVenueFirestoreData(venueStruct, forFieldValue);
  final nestedData =
      venueStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = venueStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVenueFirestoreData(
  VenueStruct? venueStruct, [
  bool forFieldValue = false,
]) {
  if (venueStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(venueStruct.toMap());

  // Add any Firestore field values
  venueStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVenueListFirestoreData(
  List<VenueStruct>? venueStructs,
) =>
    venueStructs?.map((e) => getVenueFirestoreData(e, true)).toList() ?? [];
