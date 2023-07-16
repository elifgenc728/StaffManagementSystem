import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../home/views/detail_page.dart';

enum Durum { d1, d2, d3, d4 }

StatefulBuilder Custom_MessageAlertDialog(
    BuildContext context, StateSetter setState) {
  Durum? durum = Durum.d1;
  return StatefulBuilder(builder: (context, setState) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      icon: Align(
        alignment: Alignment.topRight,
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
      ),
      iconPadding: EdgeInsets.zero,
      title: Text(
        "Yeni Mesaj Gönder",
        style: Theme.of(context).textTheme.headline6,
      ),
      titlePadding: EdgeInsets.zero,
      content: Column(
        children: [
          // CustomBorderTextField(
          //   prefixIcon: Icons.subject_outlined,
          //   labelText: "Konu",
          // ),
          // SizedBox(
          //   height: 12,
          // ),
          CustomBorderTextField(
            prefixIcon: Icons.message_outlined,
            labelText: "Mesajınız",
            maxLines: 2,
          ),
          SizedBox(
            height: 12,
          ),
          CustomBorderTextField(
            prefixIcon: Icons.mail_outline_outlined,
            labelText: "Email",
            hintText: "example@miateknoloji.com",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: const Text('Çözüldü'),
                leading: Radio<Durum>(
                  value: Durum.d1,
                  groupValue: durum,
                  onChanged: (Durum? value) {
                    setState(() {
                      durum = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: const Text('İlgileniliyor'),
                leading: Radio<Durum>(
                  value: Durum.d2,
                  groupValue: durum,
                  onChanged: (Durum? value) {
                    setState(() {
                      durum = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: const Text('Yapılmayacak'),
                leading: Radio<Durum>(
                 
                  value: Durum.d3,
                  groupValue: durum,
                  onChanged: (Durum? value) {
                    setState(() {
                      durum = value;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: const Text('Kapatıldı'),
                leading: Radio<Durum>(
                  value: Durum.d4,
                  groupValue: durum,
                  onChanged: (Durum? value) {
                    setState(() {
                      durum = value;
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Gönder",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  });
}
