import 'package:flutter/material.dart';

import 'custom_bottom_sheet.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.supervised_user_circle_rounded,
            color: Colors.blue[900],
          ),
          Text('Kullanıcı Ata',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue[900])),
        ],
      ),
      onPressed: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => CustomBottomSheet()));
      },
    );
  }
}
