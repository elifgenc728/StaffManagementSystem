import 'package:flutter/material.dart';

import 'custom_user_alertdialog.dart';

class CustomPopupMenuWidget extends StatefulWidget {
  const CustomPopupMenuWidget({super.key});

  @override
  State<CustomPopupMenuWidget> createState() => _CustomPopupMenuWidgetState();
}

class _CustomPopupMenuWidgetState extends State<CustomPopupMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Material(
          color: Colors.transparent,
          child: PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<String>(
                child: Column(
                  children: [
                    InkWell(
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
                        onTap: () async {
                          Custom_UserAlertDialog(context, (fn) {});
                        }),
                    Divider(
                      thickness: 1,
                    ),
                    InkWell(
                      // onTap: () {
                      //   Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginScreen()),
                      //   );
                      // },
                      child: ListTile(
                        leading: Icon(Icons.cancel_presentation_rounded),
                        title: Text('İsteği Kapat'),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          }),
        ));
  }
}
