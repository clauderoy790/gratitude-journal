import 'package:stacked/stacked.dart';

class JournalViewModel extends BaseViewModel {
  String _title = 'Journal View';
  String get title => '$_title : $_counter';

  int _counter = 0;
  int get counter => _counter;

  updateCounter() {
    _counter++;
    notifyListeners();
  }
}
