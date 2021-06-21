import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  String text = "Sign in";

  updateText() {
    text = "it worked";
    notifyListeners();
  }
}
