import 'package:flutter/material.dart';
import 'package:gratitudejournal/app/locator.dart';
import 'package:gratitudejournal/routes/routes.dart';

void main() {
  setupLoactor();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteManager.loginPage,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
