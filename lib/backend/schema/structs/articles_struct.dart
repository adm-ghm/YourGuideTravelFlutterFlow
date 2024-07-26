// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticlesStruct extends FFFirebaseStruct {
  ArticlesStruct({
    String? date,
    TitleStruct? title,
    ContentStruct? content,
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _title = title,
        _content = content,
        _id = id,
        super(firestoreUtilData);

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "title" field.
  TitleStruct? _title;
  TitleStruct get title => _title ?? TitleStruct();
  set title(TitleStruct? val) => _title = val;

  void updateTitle(Function(TitleStruct) updateFn) {
    updateFn(_title ??= TitleStruct());
  }

  bool hasTitle() => _title != null;

  // "content" field.
  ContentStruct? _content;
  ContentStruct get content => _content ?? ContentStruct();
  set content(ContentStruct? val) => _content = val;

  void updateContent(Function(ContentStruct) updateFn) {
    updateFn(_content ??= ContentStruct());
  }

  bool hasContent() => _content != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static ArticlesStruct fromMap(Map<String, dynamic> data) => ArticlesStruct(
        date: data['date'] as String?,
        title: TitleStruct.maybeFromMap(data['title']),
        content: ContentStruct.maybeFromMap(data['content']),
        id: castToType<int>(data['id']),
      );

  static ArticlesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ArticlesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'title': _title?.toMap(),
        'content': _content?.toMap(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.DataStruct,
        ),
        'content': serializeParam(
          _content,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static ArticlesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ArticlesStruct(
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        title: deserializeStructParam(
          data['title'],
          ParamType.DataStruct,
          false,
          structBuilder: TitleStruct.fromSerializableMap,
        ),
        content: deserializeStructParam(
          data['content'],
          ParamType.DataStruct,
          false,
          structBuilder: ContentStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ArticlesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ArticlesStruct &&
        date == other.date &&
        title == other.title &&
        content == other.content &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([date, title, content, id]);
}

ArticlesStruct createArticlesStruct({
  String? date,
  TitleStruct? title,
  ContentStruct? content,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ArticlesStruct(
      date: date,
      title: title ?? (clearUnsetFields ? TitleStruct() : null),
      content: content ?? (clearUnsetFields ? ContentStruct() : null),
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ArticlesStruct? updateArticlesStruct(
  ArticlesStruct? articles, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    articles
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addArticlesStructData(
  Map<String, dynamic> firestoreData,
  ArticlesStruct? articles,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (articles == null) {
    return;
  }
  if (articles.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && articles.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final articlesData = getArticlesFirestoreData(articles, forFieldValue);
  final nestedData = articlesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = articles.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getArticlesFirestoreData(
  ArticlesStruct? articles, [
  bool forFieldValue = false,
]) {
  if (articles == null) {
    return {};
  }
  final firestoreData = mapToFirestore(articles.toMap());

  // Handle nested data for "title" field.
  addTitleStructData(
    firestoreData,
    articles.hasTitle() ? articles.title : null,
    'title',
    forFieldValue,
  );

  // Handle nested data for "content" field.
  addContentStructData(
    firestoreData,
    articles.hasContent() ? articles.content : null,
    'content',
    forFieldValue,
  );

  // Add any Firestore field values
  articles.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getArticlesListFirestoreData(
  List<ArticlesStruct>? articless,
) =>
    articless?.map((e) => getArticlesFirestoreData(e, true)).toList() ?? [];
