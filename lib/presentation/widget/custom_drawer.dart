import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/auth/login.dart';
import 'package:mia_support_system/presentation/home/views/job_pool.dart';
import 'package:mia_support_system/presentation/home/views/new_job_page.dart';

import '../home/views/panel_page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                ),
                color: Colors.blue[900],
              ),
              child: Text(
                'Yönetici Menüsü',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PanelPage()));
              },
              child: ListTile(
                leading: Icon(Icons.bar_chart),
                title: Text(
                  'Panel',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JobPool()));
              },
              child: ListTile(
                leading: Icon(Icons.insert_invitation),
                title: Text('Genel İş Havuzu'),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewJobPage()));
                },
                child: ListTile(
                  leading: Icon(Icons.post_add_rounded),
                  title: Text('Yeni İş / Hata Ekle'),
                )),
            Divider(
              thickness: 2,
              endIndent: 100,
              indent: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Çıkış Yap'),
              ),
            )
          ],
        ));
  }
}
