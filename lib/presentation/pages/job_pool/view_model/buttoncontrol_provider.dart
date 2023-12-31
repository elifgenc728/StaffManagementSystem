import 'package:flutter/cupertino.dart';

class ButtonControlProvider extends ChangeNotifier {
  final _subjectTextEditingController = TextEditingController();
  final _messageTextEditingController = TextEditingController();
  bool _buttonIsActive = false;

   buttonIsActiveControl({Color? backgroundColor}) {
    if (_subjectTextEditingController.text.isNotEmpty &&
        _messageTextEditingController.text.isNotEmpty) {
      _buttonIsActive = true;
    } else {
      _buttonIsActive = false;
    }
    notifyListeners();
  }

//tasarımdaki text içindeki valueları providera göndermek için
  void setSubjectText(value) {
    _subjectTextEditingController.text = value;
    buttonIsActiveControl();
  }

  void setMessageText(value) {
    _messageTextEditingController.text = value;
    buttonIsActiveControl();
  }

  // providerdan verileri tasarıma getirmek için
  bool get buttonIsActive => _buttonIsActive;

  TextEditingController get messageTextEditingController =>
      _messageTextEditingController;

  TextEditingController get subjectTextEditingController =>
      _subjectTextEditingController;
}
 
