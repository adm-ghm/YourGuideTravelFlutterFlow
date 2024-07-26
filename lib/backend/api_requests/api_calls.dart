import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start yourgidetravel ApiFlow API Group Code

class YourgidetravelApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/e0f1557905044f38b1d76db702fc50ad';
  static Map<String, String> headers = {};
  static ListWpbxTecOccurrencesCall listWpbxTecOccurrencesCall =
      ListWpbxTecOccurrencesCall();
  static CreateNewWpbxTecOccurrencesCall createNewWpbxTecOccurrencesCall =
      CreateNewWpbxTecOccurrencesCall();
  static GetWpbxTecOccurrencesByIDCall getWpbxTecOccurrencesByIDCall =
      GetWpbxTecOccurrencesByIDCall();
  static ListWpbxTmTasksCall listWpbxTmTasksCall = ListWpbxTmTasksCall();
  static CreateNewWpbxTmTasksCall createNewWpbxTmTasksCall =
      CreateNewWpbxTmTasksCall();
  static GetWpbxTmTasksByIDCall getWpbxTmTasksByIDCall =
      GetWpbxTmTasksByIDCall();
}

class ListWpbxTecOccurrencesCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? occurrenceId,
    int? eventId,
    int? postId,
    String? startDate = '',
    String? startDateUtc = '',
    String? endDate = '',
    String? endDateUtc = '',
    String? duration = '',
    String? hash = '',
    String? updatedAt = '',
  }) async {
    final baseUrl = YourgidetravelApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Wpbx_tec_occurrences',
      apiUrl: '${baseUrl}/table/wpbx_tec_occurrences',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer OWY4ZjFiNDhhOGY0ZjdhNTA1ZTMyNmQ1MzcwYTBhZTc6Mjc0ODMxZGM0YTM0NTYyZGFjNmNhZTk0MzI3MThiMTk=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'occurrence_id': occurrenceId,
        'event_id': eventId,
        'post_id': postId,
        'start_date': startDate,
        'start_date_utc': startDateUtc,
        'end_date': endDate,
        'end_date_utc': endDateUtc,
        'duration': duration,
        'hash': hash,
        'updated_at': updatedAt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewWpbxTecOccurrencesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = YourgidetravelApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "event_id": 1,
  "post_id": 1857,
  "start_date": "2024-06-11 19:30:00",
  "start_date_utc": "2024-06-11 19:30:00",
  "end_date": "2024-06-13 14:00:00",
  "end_date_utc": "2024-06-13 14:00:00",
  "duration": "153000",
  "hash": "8ce4a56fe3368b724837c382d32a5c8cd7644846",
  "updated_at": "5/22/2024 2:44:19 PM"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Wpbx_tec_occurrences',
      apiUrl: '${baseUrl}/table/wpbx_tec_occurrences',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetWpbxTecOccurrencesByIDCall {
  Future<ApiCallResponse> call({
    int? occurrenceId,
  }) async {
    final baseUrl = YourgidetravelApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Wpbx_tec_occurrences by ID',
      apiUrl: '${baseUrl}/table/wpbx_tec_occurrences/${occurrenceId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListWpbxTmTasksCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? orderby = '',
    int? offset,
    int? limit,
    int? id,
    int? userId,
    String? type = '',
    String? classIdentifier = '',
    int? attempts,
    String? description = '',
    String? timeCreated = '',
    int? lastLockedAt,
    String? status = '',
  }) async {
    final baseUrl = YourgidetravelApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Wpbx_tm_tasks',
      apiUrl: '${baseUrl}/table/wpbx_tm_tasks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer OWY4ZjFiNDhhOGY0ZjdhNTA1ZTMyNmQ1MzcwYTBhZTc6Mjc0ODMxZGM0YTM0NTYyZGFjNmNhZTk0MzI3MThiMTk=',
      },
      params: {
        'filter': filter,
        'orderby': orderby,
        'offset': offset,
        'limit': limit,
        'id': id,
        'user_id': userId,
        'type': type,
        'class_identifier': classIdentifier,
        'attempts': attempts,
        'description': description,
        'time_created': timeCreated,
        'last_locked_at': lastLockedAt,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewWpbxTmTasksCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = YourgidetravelApiFlowAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": 6,
  "type": "smush",
  "class_identifier": "Re_Smush_It_Task",
  "attempts": 1,
  "description": "Re_Smush_It_Task with attachment ID : 2231, autocreated on : June 26, 2024 01:05:48",
  "time_created": "6/26/2024 6:05:48 AM",
  "last_locked_at": 0,
  "status": "complete"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new Wpbx_tm_tasks',
      apiUrl: '${baseUrl}/table/wpbx_tm_tasks',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetWpbxTmTasksByIDCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = YourgidetravelApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Wpbx_tm_tasks by ID',
      apiUrl: '${baseUrl}/table/wpbx_tm_tasks/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End yourgidetravel ApiFlow API Group Code

class EventsCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? title = '',
    String? dscription = '',
    String? imageUrl = '',
    String? startDate = '',
    String? endDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Events',
      apiUrl: 'https://yourguidetravel.com/wp-json/tribe/events/v1/events',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? events(dynamic response) => getJsonField(
        response,
        r'''$.events''',
        true,
      ) as List?;
  static List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$.events[:].image.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ArticlesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'articles',
      apiUrl: 'https://yourguidetravel.com/wp-json/wp/v2/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
