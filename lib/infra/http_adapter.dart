import 'dart:convert';

import 'package:http/http.dart';

import 'http.dart';

class HttpAdapter implements HttpClient {
  final Client client;

  HttpAdapter({required this.client});

  @override
  Future<dynamic> request({
    required String url,
    required String method,
    Map? body,
    Map<String, String>? headers,
  }) async {
    final defaultHeaders = headers ?? {}
      ..addAll({
        'content-type': 'application/json',
        'accept': 'application/json',
      });

    final jsonBody = body != null ? jsonEncode(body) : null;

    var response = Response('', 500);

    try {
      if (method == 'get') {
        response = await client
            .get(Uri.parse(url), headers: defaultHeaders)
            .timeout(Duration(seconds: 10));
      }
    } catch (error) {
      throw HttpError.serverError;
    }
    return _handleResponse(response);
  }

  dynamic _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return response.body.isEmpty ? {} : jsonDecode(response.body);
    } else if (response.statusCode == 204) {
      return {};
    } else if (response.statusCode == 400) {
      throw HttpError.badRequest;
    } else if (response.statusCode == 401) {
      throw HttpError.unauthorized;
    } else if (response.statusCode == 403) {
      throw HttpError.forbidden;
    } else if (response.statusCode == 404) {
      throw HttpError.notFound;
    } else {
      throw HttpError.serverError;
    }
  }
}
