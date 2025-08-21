import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:ez_sauda/core/data/modules/prod_client.dart';

class LoggedClient extends ProdClient {
  void _debugPrint(Object? object) {
    //this will be called only in debug mode,
    //see main configureDependencies invocation
    //ignore: avoid_print
    print(object);
  }

  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) async {
    final response = await super.get(url, headers: headers);
    _debugPrint('RESPONSE BODY ${response.body}');
    return response;
  }

  @override
  Future<Response> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await super
        .delete(url, headers: headers, encoding: encoding, body: body);
    _debugPrint('RESPONSE BODY ${response.body}');
    return response;
  }

  @override
  Future<Response> patch(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await super
        .patch(url, headers: headers, encoding: encoding, body: body);
    _debugPrint('RESPONSE BODY ${response.body}');
    return response;
  }

  @override
  Future<Response> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response =
        await super.put(url, headers: headers, encoding: encoding, body: body);
    _debugPrint('RESPONSE BODY ${response.body}');
    return response;
  }

  @override
  Future<Response> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response =
        await super.post(url, headers: headers, encoding: encoding, body: body);
    _debugPrint('RESPONSE BODY ${response.body}');
    return response;
  }

  @override
  Future<IOStreamedResponse> send(BaseRequest request) async {
    final response = await super.send(request);
    _debugPrint('${request.method} REQUEST TO: \n${request.url}');
    _debugPrint(
      request.headers.isEmpty
          ? 'AND WITH NO HEADERS'
          : 'WITH HEADERS: \n${request.headers}',
    );
    if (request is Request) {
      final requestBody = request.body;
      _debugPrint(
        requestBody.isEmpty
            ? 'AND WITH NO BODY'
            : 'AND WITH BODY \n$requestBody',
      );
    } else if (request is MultipartRequest) {
      _debugPrint(
        request.fields.isEmpty
            ? 'AND WITH NO BODY'
            : 'AND WITH BODY \n${request.fields}',
      );
      _debugPrint(
        request.files.isEmpty
            ? 'AND WITH NO FILES'
            : 'AND FILES ${request.files.map((e) => "${e.field}: ${e.filename}")}',
      );
    }
    _debugPrint('RESPONSE STATUS CODE: ${response.statusCode}');
    return response;
  }
}
