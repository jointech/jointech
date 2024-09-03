import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailCorreoTecnico Group Code

class BFEmailCorreoTecnicoGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailCorreoTecnicoCall emailCorreoTecnicoCall =
      EmailCorreoTecnicoCall();
}

class EmailCorreoTecnicoCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
  }) async {
    final baseUrl = BFEmailCorreoTecnicoGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-feb39f33-ae8f-45b5-ab27-a593e083099c": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailCorreoTecnico',
      apiUrl:
          '$baseUrl/email?templateId=09YJbWaRkqggqodFO8Rm&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName',
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

/// End BF - emailCorreoTecnico Group Code

class CrearPDFCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "template_id": "ef377b230cad5cb6",
  "export_type": "json",
  "expiration": "10",
  "output_file": "my_new.pdf",
  "data": {
    "invoice_number": "INV38379",
    "date": "2021-09-30",
    "due_date": "2021-09-30",
    "currency": "USD",
    "discount": 5,
    "tax": 7,
    "company_name": "Salinas y Fabres",
    "email": "servicio@salfa.cl",
    "client": "Arauco",
    "client_address": "2769 Nutter Street,",
    "client_address2": "Kansas City, Missouri",
    "client_address3": "64105",
    "items": [
      {
        "description": "AWS Webservices",
        "quantity": 10,
        "unit_price": 50,
        "total": 500
      },
      {
        "description": "Web Design & Elementor Theme",
        "quantity": 5,
        "unit_price": 40,
        "total": 200
      },
      {
        "description": "Software Development",
        "quantity": 2,
        "unit_price": 60,
        "total": 120
      },
      {
        "description": "IT Consulting",
        "quantity": 20,
        "unit_price": 50,
        "total": 1000
      },
      {
        "description": "Social Media Page",
        "quantity": 8,
        "unit_price": 40,
        "total": 320
      }
    ],
    "gross_total": 25055
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crear PDF',
      apiUrl: 'https://api.craftmypdf.com/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-API-KEY': 'af10MTI3MDY6MTI3NTg6NmhObXdBWUNvWmRETUUyWg=',
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
