import 'dart:ffi';

import 'package:flutter/material.dart';

import 'detail_page.dart';

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
          atananKisi: ' Sema ŞAHİN',
          gonderenKisi: 'Mehmet YILMAZ',
          tarih: '26.04.2023',
          saat: '12:15',
          durum: 'devam ediyor'),
      CollectionModel(
          atananKisi: ' Ali ÖZTEN',
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
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Drawer()));
            },
            icon: Icon(Icons.menu)),
        title: Text('HBYS Destek Sistemi'),
      ),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _items[index].atananKisi,
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Çanakkale 18 Mart Üniversitesi",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                    Divider(
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_today_outlined,
                                      color: Colors.orange[900], size: 16),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    _items[index].tarih,
                                  ),
                                ],
            return Card(
              child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _items[index].atananKisi,
                              style: TextStyle(fontSize: 18),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                "Çanakkale 18 Mart Üniversitesi",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.alarm_outlined,
                                      color: Colors.orange[900], size: 16),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    _items[index].saat,
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.donut_large_sharp,
                                      color: Colors.orange[900], size: 16),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Refakatçi Makbuz Sorgulama Hakkında",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailPage()));
                                    },
                                    label: Text('Detay'),
                                    icon: Icon(Icons.arrow_right),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange[900],
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                          5,
                                        ))),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Chip(
                                    visualDensity: VisualDensity(vertical: -2),
                                    backgroundColor: Colors.green,
                                    label: Container(
                                      width: 50,
                                      height: 16,
                                      child: Text('destek'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
