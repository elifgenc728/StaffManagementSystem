import 'package:flutter/cupertino.dart';

import '../home/views/detail_page.dart';

class ButtonControlProvider with ChangeNotifier {
  TextEditingController _subjectTextEditingController = TextEditingController();
  TextEditingController _messageTextEditingController = TextEditingController();
  void _buttonIsActiveControl() {  
    if (_messageTextEditingController.text.isNotEmpty &&
        _subjectTextEditingController.text.isNotEmpty) {
    } else {}
    notifyListeners();
  }
}
