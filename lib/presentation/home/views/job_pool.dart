import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mia_support_system/domain/model/jobs_model.dart';

import '../../widget/custom_popupmenu.dart';
import '../../widget/custom_textbutton.dart';

class JobPool extends StatefulWidget {
  const JobPool({Key? key}) : super(key: key);

  @override
  State<JobPool> createState() => _JobPoolState();
}

class _JobPoolState extends State<JobPool> {
  List<JobsModel>? _items;
  @override
  void initState() {
    super.initState();
    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    final response = await Dio().get('https://mocki.io/v1/643efa4f-ad7c-49f8-9baa-0a61266838f2');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => JobsModel.fromJson(e)).toList();
        });
      }
    }
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
              itemCount: _items?.length,
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
                                  _items?[index].name ?? '',
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
                                            // Text(
                                            //   _items[index].tarih,
                                            // ),
                                            Text(' - '),
                                            // Text(
                                            //   _items[index].saat,
                                            // ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.alarm_rounded,
                                              size: 16,
                                              color: Colors.blue[900],
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text("2 saat")
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
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
                                            // Text(
                                            //   _items[index].gonderenKisi,
                                            //   style: TextStyle(fontSize: 15),
                                            // ),
                                            SizedBox(
                                              width: 12,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
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
                                            SizedBox(
                                              width: 245,
                                            ),
                                            CustomDetailTextButton(),
                                          ],
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
