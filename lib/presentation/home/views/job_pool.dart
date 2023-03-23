import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../widget/custom_drawer.dart';
import '../../widget/custom_dropdown.dart';
import '../../widget/custom_popupmenu.dart';
import '../../widget/custom_textbutton.dart';
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
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            automaticallyImplyLeading: false,
            title: Text('Genel İş Havuzu'),
          ),
          body: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Card(
                    margin: EdgeInsets.zero,
                    elevation: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.donut_large_sharp,
                                      color: Colors.blue[900], size: 16),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Text(
                                      "Refakatçi Makbuz Sorgulama Hakkında Bilgileri güncelleme",
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1, child: CustomPopupMenuWidget()),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.calendar_today_outlined,
                                                color: Colors.blue[900],
                                                size: 16),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              _items[index].tarih,
                                            ),
                                            Text(' - '),
                                            Text(
                                              _items[index].saat,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.person,
                                              size: 16,
                                              color: Colors.blue[900],
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              _items[index].gonderenKisi,
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 12,
                                            ),  
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.app_registration_rounded,
                                              color: Colors.blue[900],
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text('211088'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Column(
                                      children: [
                                        CustomDetailTextButton(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              top: 5,
                                              right: 10,
                                              bottom: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
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
