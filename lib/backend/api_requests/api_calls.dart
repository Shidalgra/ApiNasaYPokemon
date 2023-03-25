import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PokemonApiCall {
  static Future<ApiCallResponse> call({
    String? pokemonName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PokemonApi',
      apiUrl: 'https://pokeapi.co/api/v2/pokemon/${pokemonName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imagen(dynamic response) => getJsonField(
        response,
        r'''$.sprites.front_default''',
      );
  static dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.forms[:].name''',
      );
  static dynamic peso(dynamic response) => getJsonField(
        response,
        r'''$.weight''',
      );
}

class FotoDeMarteCall {
  static Future<ApiCallResponse> call({
    String? imagenes = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FotoDeMarte',
      apiUrl:
          'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=DEMO_KEY',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imagenes(dynamic response) => getJsonField(
        response,
        r'''$.photos[:].img_src''',
        true,
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
