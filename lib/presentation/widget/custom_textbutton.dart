import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/widget/custom_user_alertdialog.dart';

import '../home/views/detail_page.dart';
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
    return TextButton.icon(
      icon: Icon(
        Icons.person_add,
        size: 15,
        color: Colors.blue[900],
      ),
      label: Text(
        'Kullanıcı Ata',
        style: TextStyle(
            decoration: TextDecoration.underline, color: Colors.blue[900]),
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

class CustomDetailTextButton extends StatelessWidget {
  const CustomDetailTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 0.0,
      ),
      child: InkWell(
        child: Row(
          children: [
            Text('Detay',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.blue[900])),
            SizedBox(
              width: 8,
            ),
            Icon(
              // Icons.supervised_user_circle_rounded,
              Icons.arrow_forward_ios, size: 13,
              color: Colors.blue[900],
            ),
          ],
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailPage()));
        },
      ),
    );
  }
}
