import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiBase {
  final String host;
  final String basePath;
  final Map<String, String>? headers;

  ApiBase(this.host, this.basePath, {this.headers});

  Future<dynamic> get(String path, [Map<String, dynamic>? queryParams]) async {
    try {
      var url = Uri.https(this.host, this.basePath + path, queryParams);
      final response = await http.get(url, headers: this.headers);
      return _returnResponse(response);
    } on SocketException {
      throw Exception('No Internet connection');
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body.toString());
      case 400:
        throw Exception('BadRequestException ${response.body}');
      case 401:
      case 403:
        throw Exception('UnauthorisedException ${response.body}');
      case 404:
        throw Exception('NotFoundException ${response.body}');
      case 500:
      default:
        throw Exception(
            'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}