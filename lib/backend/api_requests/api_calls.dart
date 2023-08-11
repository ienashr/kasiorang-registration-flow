import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
  }) {
    final body = '''
{
    "phone": "${phone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl:
          'https://03c57c2a-8140-4f76-8f8d-5ea1b6a045c4.mock.pstmn.io/login',
      callType: ApiCallType.POST,
      headers: {
        'Device-Id': '81579959-b592-40d5-b254-f9cc50762a5b',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic otp(dynamic response) => getJsonField(
        response,
        r'''$.method''',
      );
  static dynamic sessionId(dynamic response) => getJsonField(
        response,
        r'''$.session_id''',
      );
}

class VerifyOTPCall {
  static Future<ApiCallResponse> call({
    String? sessionId = '',
    String? phone = '',
    String? otp = '',
  }) {
    final body = '''
{
  "session_id": "${sessionId}",
  "phone": "${phone}",
  "otp": "${otp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyOTP',
      apiUrl:
          'https://03c57c2a-8140-4f76-8f8d-5ea1b6a045c4.mock.pstmn.io/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        'Device-Id': '81579959-b592-40d5-b254-f9cc50762a5b',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class VerifyPINCall {
  static Future<ApiCallResponse> call({
    String? pin = '',
    String? phone = '',
    String? sessionId = '',
  }) {
    final body = '''
{
  "pin": "${pin}",
  "phone": "${phone}",
  "session_id": "${sessionId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyPIN',
      apiUrl:
          'https://03c57c2a-8140-4f76-8f8d-5ea1b6a045c4.mock.pstmn.io/verify-pin',
      callType: ApiCallType.POST,
      headers: {
        'Device-Id': '81579959-b592-40d5-b254-f9cc50762a5b',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic dataToken(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic customerName(dynamic response) => getJsonField(
        response,
        r'''$.data.customer.name''',
      );
  static dynamic customerEmail(dynamic response) => getJsonField(
        response,
        r'''$.data.customer.email''',
      );
  static dynamic customerPhone(dynamic response) => getJsonField(
        response,
        r'''$.data.customer.phone''',
      );
  static dynamic customerImageUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.customer.image_url''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
