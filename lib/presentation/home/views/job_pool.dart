import 'dart:ffi';

import 'package:flutter/material.dart';

class JobPool extends StatefulWidget {
  const JobPool({Key? key}) : super(key: key);

  @override
  State<JobPool> createState() => _JobPoolState();
}

class _JobPoolState extends State<JobPool> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          atananKisi: ' Elif GENÇ',
          gonderenKisi: 'Mehmet YILMAZ',
          tarih: '26.04.2023',
          saat: '11:04',
          durum: 'devam ediyor'),
      CollectionModel(
          atananKisi: ' Elif GENÇ',
          gonderenKisi: 'Mehmet YILMAZ',
          tarih: '26.04.2023',
          saat: '12:15',
          durum: 'devam ediyor'),
      CollectionModel(
          atananKisi: ' Elif GENÇ',
          gonderenKisi: 'Mehmet YILMAZ',
          tarih: '26.04.2023',
          saat: '16:44',
          durum: 'devam ediyor'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Drawer()));
            },
            icon: Icon(Icons.menu_sharp)),
        title: Text('HBYS Destek Sistemi'),
      ),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _items[index].atananKisi,
                          style: TextStyle(fontSize: 18),
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.calendar_today_outlined,
                                color: Colors.orange, size: 16),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              _items[index].tarih,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.alarm_outlined,
                                color: Colors.orange, size: 16),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              _items[index].saat,
                              style: TextStyle(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.donut_large_sharp,
                                color: Colors.orange, size: 16),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Refakatçi Makbuz Sorgulama Hakkında",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Çanakkale 18 Mart Üni"),
                            Chip(
                                visualDensity: VisualDensity(vertical: -2),
                                backgroundColor: Colors.green,
                                label: Text(
                                  "Destek",
                                )),
                          ],
                        )
                      ])),
            );
          }),
    );
  }
}

//durum(ilgileniyor,reddedildi..),
//yollayan kullanıcı(isimler),
// atanan
//bitiş süre

class CollectionModel {
  final String atananKisi;
  final String gonderenKisi;
  final String durum;
  final String saat;
  final String tarih;

  CollectionModel(
      {required this.atananKisi,
      required this.gonderenKisi,
      required this.tarih,
      required this.saat,
      required this.durum});
}
