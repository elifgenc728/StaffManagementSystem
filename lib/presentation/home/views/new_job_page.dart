import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/home/views/detail_page.dart';
import 'package:mia_support_system/presentation/widget/custom_dropdown.dart';

import '../../widget/custom_chipwidget.dart';
import '../../widget/customadd_dropdown.dart';

class NewJobPage extends StatefulWidget {
  const NewJobPage({super.key});

  @override
  State<NewJobPage> createState() => _NewJobPageState();
}

class _NewJobPageState extends State<NewJobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Yeni Hizmet İsteği'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 18,
              ),
              Center(
                child: Container(
                  width: 350,
                  height: 150,
                  color: Colors.blue[50],
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: <Widget>[
                        Text('İstek Detayları ',
                            style: Theme.of(context).textTheme.headline6),
                        Divider(
                          thickness: 2,
                          endIndent: 100,
                          indent: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 22,
                              child: ListTile(
                                title: Text(
                                  "Kurum: ",
                                  maxLines: 1,
                                ),
                                subtitle: Text(
                                  "Mia Teknoloji HBYS",
                                  maxLines: 2,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 20,
                              child: ListTile(
                                title: const Text(
                                  "Ekleyen: ",
                                  maxLines: 1,
                                ),
                                subtitle: Text(
                                  "Elif GENÇ",
                                  maxLines: 1,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 15,
                              child: ListTile(
                                title: Text(
                                  "Tarihi: ",
                                  maxLines: 1,
                                ),
                                subtitle: Column(
                                  children: [
                                    Text(
                                      "26.04.2023",
                                      maxLines: 1,
                                    ),
                                    Text('14:04:23')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(padding: const EdgeInsets.only(left: 32.0))),
              Text('Konu'),
              Container(
                  padding: EdgeInsets.only(left: 30, right: 35, top: 4),
                  child: CustomBorderTextField()),
              SizedBox(
                height: 40,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(padding: const EdgeInsets.only(left: 32.0))),
              Text('Mesajınız'),
              Container(
                  padding: EdgeInsets.only(left: 30, right: 35, top: 4),
                  child: CustomBorderTextField()),
              SizedBox(
                height: 40,
              ),
              Custom_ChipWidget(),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                  ),
                  onPressed: () {},
                  child: Text('İstek Gönder'))
            ],
          ),
        ));
  }
}
