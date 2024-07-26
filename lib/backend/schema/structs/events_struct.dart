// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsStruct extends FFFirebaseStruct {
  EventsStruct({
    String? startDate,
    String? endDate,
    int? id,
    String? title,
    String? description,
    ImageStruct? image,
    VenueStruct? venue,
    List<OrganizerStruct>? organizer,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _startDate = startDate,
        _endDate = endDate,
        _id = id,
        _title = title,
        _description = description,
        _image = image,
        _venue = venue,
        _organizer = organizer,
        super(firestoreUtilData);

  // "start_date" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  set image(ImageStruct? val) => _image = val;

  void updateImage(Function(ImageStruct) updateFn) {
    updateFn(_image ??= ImageStruct());
  }

  bool hasImage() => _image != null;

  // "venue" field.
  VenueStruct? _venue;
  VenueStruct get venue => _venue ?? VenueStruct();
  set venue(VenueStruct? val) => _venue = val;

  void updateVenue(Function(VenueStruct) updateFn) {
    updateFn(_venue ??= VenueStruct());
  }

  bool hasVenue() => _venue != null;

  // "organizer" field.
  List<OrganizerStruct>? _organizer;
  List<OrganizerStruct> get organizer => _organizer ?? const [];
  set organizer(List<OrganizerStruct>? val) => _organizer = val;

  void updateOrganizer(Function(List<OrganizerStruct>) updateFn) {
    updateFn(_organizer ??= []);
  }

  bool hasOrganizer() => _organizer != null;

  static EventsStruct fromMap(Map<String, dynamic> data) => EventsStruct(
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        description: data['description'] as String?,
        image: ImageStruct.maybeFromMap(data['image']),
        venue: VenueStruct.maybeFromMap(data['venue']),
        organizer: getStructList(
          data['organizer'],
          OrganizerStruct.fromMap,
        ),
      );

  static EventsStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'start_date': _startDate,
        'end_date': _endDate,
        'id': _id,
        'title': _title,
        'description': _description,
        'image': _image?.toMap(),
        'venue': _venue?.toMap(),
        'organizer': _organizer?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start_date': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
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
          ParamType.DataStruct,
        ),
        'venue': serializeParam(
          _venue,
          ParamType.DataStruct,
        ),
        'organizer': serializeParam(
          _organizer,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static EventsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventsStruct(
        startDate: deserializeParam(
          data['start_date'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
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
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
        venue: deserializeStructParam(
          data['venue'],
          ParamType.DataStruct,
          false,
          structBuilder: VenueStruct.fromSerializableMap,
        ),
        organizer: deserializeStructParam<OrganizerStruct>(
          data['organizer'],
          ParamType.DataStruct,
          true,
          structBuilder: OrganizerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'EventsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EventsStruct &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        image == other.image &&
        venue == other.venue &&
        listEquality.equals(organizer, other.organizer);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [startDate, endDate, id, title, description, image, venue, organizer]);
}

EventsStruct createEventsStruct({
  String? startDate,
  String? endDate,
  int? id,
  String? title,
  String? description,
  ImageStruct? image,
  VenueStruct? venue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventsStruct(
      startDate: startDate,
      endDate: endDate,
      id: id,
      title: title,
      description: description,
      image: image ?? (clearUnsetFields ? ImageStruct() : null),
      venue: venue ?? (clearUnsetFields ? VenueStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventsStruct? updateEventsStruct(
  EventsStruct? events, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    events
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventsStructData(
  Map<String, dynamic> firestoreData,
  EventsStruct? events,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (events == null) {
    return;
  }
  if (events.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && events.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventsData = getEventsFirestoreData(events, forFieldValue);
  final nestedData = eventsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = events.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventsFirestoreData(
  EventsStruct? events, [
  bool forFieldValue = false,
]) {
  if (events == null) {
    return {};
  }
  final firestoreData = mapToFirestore(events.toMap());

  // Handle nested data for "image" field.
  addImageStructData(
    firestoreData,
    events.hasImage() ? events.image : null,
    'image',
    forFieldValue,
  );

  // Handle nested data for "venue" field.
  addVenueStructData(
    firestoreData,
    events.hasVenue() ? events.venue : null,
    'venue',
    forFieldValue,
  );

  // Add any Firestore field values
  events.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventsListFirestoreData(
  List<EventsStruct>? eventss,
) =>
    eventss?.map((e) => getEventsFirestoreData(e, true)).toList() ?? [];
