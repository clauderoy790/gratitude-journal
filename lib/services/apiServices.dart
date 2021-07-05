import 'dart:convert';
import 'dart:developer';

import 'package:gratitudejournal/services/Responses/loginResponse.dart';
import 'package:gratitudejournal/services/apiBase.dart';
import 'package:http/http.dart' as http;

class ApiServices extends ApiBase {
  ApiServices()
      : super('daily-gratitude790.uc.r.appspot.com', '',
            headers: {'accept': 'application/json'});
  Future<LoginResponse> login(String username, String password) async {
    log('username: ' + username + ', password: ' + password);
    log('host: ' + this.host);
    var resp = await http.post(Uri.http(
        this.host, '/login', {'username': username, 'password': password}));

    if (resp.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return LoginResponse.fromJson(jsonDecode(resp.body));
    } else {
      throw new Exception("not working properly");
    }
  }
}
