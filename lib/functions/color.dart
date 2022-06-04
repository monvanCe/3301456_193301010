import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Colour extends ChangeNotifier {
  var _setcolour = 1;

  coloursettings() {
    if (_setcolour == 1) {
      // red
      colour1() {
        ThemeData(
          primaryColor: Color.fromARGB(255, 196, 80, 80),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        );
      }

      _colour2 = 'backgroundColor: Color.fromARGB(255, 211, 168, 168),';
    } else if (_setcolour == 2) {
      // green
      _colour1 = 'primaryColor: Color.fromARGB(255, 66, 173, 61),';
      _colour2 = 'backgroundColor: Color.fromARGB(255, 104, 171, 101),';
    } else {
      // blue
      _colour1 = 'primaryColor: Color.fromARGB(255, 35, 35, 176),';
      _colour2 = 'backgroundColor: Color.fromARGB(255, 61,61,173),';
    }
  }

  int get getCounter {
    return _setcolour;
  }

  void incrementCounter() {
    _setcolour += 1;
    notifyListeners();
  }
}
