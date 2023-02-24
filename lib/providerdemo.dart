import 'package:flutter/material.dart';

class provividerdemo with ChangeNotifier {
  String text1 = 'ramees';
  void changevalue(String val) {
    text1 = 'val';
    notifyListeners();
  }

  Widget widget() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.orange,shape: BoxShape.circle),
    );
  }
}
