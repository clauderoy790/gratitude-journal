import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gratitudejournal/app/locator.dart';
import 'package:gratitudejournal/services/apiServices.dart';
import 'package:gratitudejournal/ui/views/journal/journalView.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class LoginViewModel extends BaseViewModel {
  final txtUsername = TextEditingController();
  final txtPassword = TextEditingController();


  String password = "";

  Message msg = Message(message: "");
  ApiServices api = locator<ApiServices>();

  Future<void> initialize() async {
    log("initializing");
    setBusy(true);

    final response = await http
        .get(Uri.parse('https://daily-gratitude790.uc.r.appspot.com/'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      this.msg = Message.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load message');
    }
    log("Message: " + msg.message);
    setBusy(false);
  }

  void login() async {
    log("LOGGIN IN");
    setBusy(true);
    var resp = await api.login(txtUsername.text, txtPassword.text);
    log("IS it working?: " +
        resp.success.toString() +
        ", message: " +
        resp.error);
    //Navigator.of(context).pushNamed(RouteManager.journalPage);
    setBusy(false);
  }
}
