import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/widget/custom_user_alertdialog.dart';

import 'custom_bottom_sheet.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  Type? get stateSetter => null;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            // Icons.supervised_user_circle_rounded,
            Icons.person, size: 18,
            color: Colors.blue[900],
          ),
          Text('Kullanıcı Ata',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue[900])),
        ],
      ),
      onPressed: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return SingleChildScrollView(
                  child: Custom_UserAlertDialog(context, setState),
                );
              },
            );
          },
        );
      },
    );
  }
}
