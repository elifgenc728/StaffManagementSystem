import 'package:flutter/material.dart';

import '../widget/custom_textbutton.dart';


class MyJobPool extends StatefulWidget {
  const MyJobPool({super.key});

  @override
  State<MyJobPool> createState() => _MyJobPoolState();
}

class _MyJobPoolState extends State<MyJobPool> {
  late final List<MyJobs> items;

  @override
  void initState() {
    super.initState();
    items = [
      MyJobs(
          atananKisi: ' Elif GENÇ',
          gonderenKisi: 'Selim YILMAZ',
          tarih: '26.04.2023',
          saat: '11:04',
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
            title: Text('Benim İş Havuzum'),
          ),
          body: ListView.builder(
              itemCount: items.length,
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
                                  items[index].atananKisi,
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "Çanakkale AVM",
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
                                      color: Colors.green[900], size: 16),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      "AVM Eksikliklerinin Giderilmesi",
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
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
                                                color: Colors.green[900],
                                                size: 16),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              items[index].tarih,
                                            ),
                                            Text(' - '),
                                            Text(
                                              items[index].saat,
                                            ),
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
                                              color: Colors.green[900],
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
                                              color: Colors.green[900],
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              items[index].gonderenKisi,
                                              style: TextStyle(fontSize: 15),
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
                                              color: Colors.green[900],
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text('300'),
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

class MyJobs {
  final String atananKisi;
  final String gonderenKisi;
  final String durum;
  final String saat;
  final String tarih;

  MyJobs(
      {required this.atananKisi,
      required this.gonderenKisi,
      required this.tarih,
      required this.saat,
      required this.durum});
}
