import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

/// Adds 'authorization' header with an API key when making HTTP requests.
///
/// If 'authorization' is already present in the request, it will complete with an exception. This will prevent accidental overrides of a header with the API key.
class ApiKeyClient extends http.BaseClient {
  final String _apiKey;
  final Codec<String, String> _codec;
  final http.Client _inner;

  ApiKeyClient({
    required String apiKey,
    http.Client? inner,
  })  : _apiKey = apiKey,
        _codec = utf8.fuse(base64),
        _inner = inner ?? http.Client();

  @override
  void close() {
    _inner.close();
  }

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request,
  ) {
    if (request.headers.containsKey('authorization')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has an "authorization" header. Adding the "authorization" would override that existing value.',
      );
    }

    return _inner.send(
      http.Request(
        request.method,
        request.url,
      )
        ..headers.addAll(request.headers)
        ..headers['authorization'] = 'Basic ${_codec.encode('$_apiKey:')}',
    );
  }
}

/// Obtains a [Client] that uses the given [apiKey] for making HTTP requests.
///
/// If [inner] is provided, all HTTP requests will be made with it. Otherwise, a new [Client] instance will be created.
///
/// The user is responsible for closing the returned HTTP [Client]. Closing the returned [Client] will also close the [inner] client.
http.Client clientViaApiKey(
  String apiKey, {
  http.Client? inner,
}) {
  return ApiKeyClient(
    apiKey: apiKey,
    inner: inner,
  );
}
