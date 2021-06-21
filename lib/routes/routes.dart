import 'package:flutter/material.dart';
import 'package:gratitudejournal/ui/views/journal/journalView.dart';
import 'package:gratitudejournal/ui/views/login/loginView.dart';
import 'package:gratitudejournal/ui/views/register/registerView.dart';
import 'package:gratitudejournal/ui/views/settings/settingsView.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String journalPage = '/journal';
  static const String registerPage = '/register';
  static const String settingsPage = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => LoginView());
      case journalPage:
        return MaterialPageRoute(builder: (context) => JournalView());
      case registerPage:
        return MaterialPageRoute(builder: (context) => RegisterView());
      case settingsPage:
        return MaterialPageRoute(builder: (context) => SettingsView());
      default:
        throw FormatException("Route not found! Check routes again!");
    }
  }
}
