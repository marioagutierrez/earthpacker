import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class KycCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "workflow_id": "a889443f-e627-443c-9e7b-dc19881baeb9",
  "metadata": {
    "email": "${escapeStringForJson(email)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'KYC',
      apiUrl: 'https://verification.didit.me/v2/session/',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-api-key': 'qldKNRPkul5yW6KtfOVmaeCk_F00yJTeN-yQ602GZ10',
      },
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

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static String? sesionID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.session_id''',
      ));
}

class CheckKYCCall {
  static Future<ApiCallResponse> call({
    String? sesionId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'checkKYC',
      apiUrl: 'https://verification.didit.me/v2/session/${sesionId}/',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'x-api-key': 'qldKNRPkul5yW6KtfOVmaeCk_F00yJTeN-yQ602GZ10',
      },
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

class CheckInstituteCall {
  static Future<ApiCallResponse> call({
    String? nombreInst = '',
    String? code = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nombre_completo": "${escapeStringForJson(nombreInst)}",
  "codigo_de_verificacion": "${escapeStringForJson(code)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checkInstitute',
      apiUrl: 'https://www.earthpacker.com/api/check-code',
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

  static bool? valid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isValid''',
      ));
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
