import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CursorProvider extends ChangeNotifier {
  Offset _pointer = Offset.zero;
  Offset get pointer => _pointer;

  toggleTheme(PointerHoverEvent event) {
    _pointer = event.position;
    notifyListeners();
  }
}
