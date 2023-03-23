import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/auth/login.dart';
import 'package:mia_support_system/presentation/home/views/panel_page.dart';
import 'package:mia_support_system/presentation/widget/custom_user_alertdialog.dart';

class CustomPopupMenuWidget extends StatefulWidget {
  const CustomPopupMenuWidget({super.key});

  @override
  State<CustomPopupMenuWidget> createState() => _CustomPopupMenuWidgetState();
}

class _CustomPopupMenuWidgetState extends State<CustomPopupMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (BuildContext context) {
      return [
        PopupMenuItem<String>(
            child: ListTile(
              leading: Icon(
                Icons.person_add,
                size: 18,
              ),
              title: Text(
                'Kullanıcı Ata',
                style: TextStyle(fontSize: 15),
              ),
            ),
            onTap: () => Future(
                  () => Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => SingleChildScrollView(
                            child: Custom_UserAlertDialog(context, setState))),
                  ),
                )),
        PopupMenuItem(
            child: ListTile(
                leading: Icon(Icons.cancel_presentation_rounded),
                title: Text('İsteği Kapat')),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            })
      ];
    });
  }
}
