import 'dart:async';
import 'dart:convert' show json, jsonEncode;

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

class NetworkService {
  Logger get _logger => Logger(runtimeType.toString());

  /// Fetch generic data through REST API
  Future<dynamic> execute({
    required String method,
    required Uri uri,
    Map<String, dynamic>? body,
  }) async {
    _logger.info('$method request to $uri');
    _logger.info('$method request to $uri');

    late final http.Response response;
    switch (method) {
      case 'POST':
        response = await http.post(uri, body: jsonEncode(body));
        _logger.fine('${response.statusCode} ${response.body}');
        break;

      case 'GET':
        response = await http.get(uri);
        break;

      case 'DELETE':
        response = await http.delete(uri);
        _logger.fine('${response.statusCode} ${response.body}');
        break;

      default:
        throw 'Unrecognized request method $method';
    }

    // Check response
    if (response.statusCode != 200) {
      throw 'NetworkException: bad response (${response.statusCode}), '
          '$uri ${response.body}';
    }

    dynamic responseBody;
    try {
      responseBody = List<Map<String, dynamic>>.from(
          response.body.isEmpty ? [] : json.decode(response.body));
    } on Object {
      responseBody = json.decode(response.body);
    }

    return responseBody;
  }
}
