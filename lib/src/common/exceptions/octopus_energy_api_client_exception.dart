import 'dart:convert';

import 'package:http/http.dart' as http;

class OctopusEnergyApiClientException implements Exception {
  /// The message of the exception.
  String? message;

  /// Constructs an [OctopusEnergyApiClientException].
  OctopusEnergyApiClientException({
    this.message,
  });

  @override
  String toString() {
    if (message != null) {
      return 'OctopusEnergyApiClientException: $message';
    } else {
      return 'OctopusEnergyApiClientException';
    }
  }

  /// Checks that the [response] has a success status code.
  ///
  /// Throws an [OctopusEnergyApiClientException] if the [response] does not have a success status code.
  static http.Response checkIsSuccessStatusCode(
    http.Response response,
  ) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      if (response.headers['content-type'] == 'application/json') {
        throw OctopusEnergyApiClientException(
          message: json.decode(response.body)['detail'],
        );
      }

      throw OctopusEnergyApiClientException();
    } else {
      return response;
    }
  }
}
