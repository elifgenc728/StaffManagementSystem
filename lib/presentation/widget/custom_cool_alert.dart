import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

class CoolAlertCustom {
  static void successCoolAlert(BuildContext context) {
    CoolAlert.show(
      context: context,
      type: CoolAlertType.success,
      text: 'İsteğiniz başarıyla gönderildi. ',
      title: 'Gönderildi !',
      confirmBtnText: 'Tamam',
      confirmBtnColor: Colors.blue.shade900,
    );
  }
}
