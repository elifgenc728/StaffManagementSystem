import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

import '../widget/custom_mesaggealertdialog.dart';


class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

enum Durum { d1, d2, d3, d4 }

class _DetailPageState extends State<DetailPage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  Durum? durum = Durum.d1;
  TextEditingController textEditingController =
      TextEditingController(text: "Konu hakkındaki bilgiler burada olacak");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
        title: Text('İstek Detayları'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: <Widget>[
            ExpansionTileCard(
              baseColor: Colors.green[50],
              expandedColor: Colors.white,
              key: cardA,
              // leading:
              //     CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Kurum: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                            text:
                                "Çanakkale AVM",
                            style: TextStyle(color: Colors.black)),
                      ]),
                    ),
                    SizedBox(height: 2),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Kullanıcı: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                            text: "Sinem ÖZEN",
                            style: TextStyle(color: Colors.black)),
                      ]),
                    ),
                    SizedBox(height: 2),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Konu: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                            text: "Seçili Alanın Düzenlenmesi",
                            style: TextStyle(color: Colors.black)),
                      ]),
                    ),
                    SizedBox(height: 2),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Açılma Tarihi: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        TextSpan(
                            text: "22/02/2023 - 17.50",
                            style: TextStyle(color: Colors.black)),
                      ]),
                    ),
                  ],
                ),
              ),
              // subtitle: Text(
              //   "Açılma Tarihi: 27.02.2023",
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),

              children: [
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'Durum: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                  text: "Henüz Çözülmedi",
                                  style: TextStyle(color: Colors.black)),
                            ]),
                          ),
                          SizedBox(height: 2),
                          SizedBox(height: 2),
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'Önem Seviyesi: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                  text: "Normal",
                                  style: TextStyle(color: Colors.black)),
                            ]),
                          ),
                          SizedBox(height: 2),
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'İstek Türü:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                  text: "Yeni İstek",
                                  style: TextStyle(color: Colors.black)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Card(
              elevation: 20,
              color: Colors.green[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        50,
                      ),
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(50))),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.green[50],
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black54,
                        )),
                    title: Text("Ekin KARTAL"),
                    subtitle: Text("22/12/2023"),
                  ),
                  Divider(
                    thickness: 1.5,
                    indent: 30,
                    endIndent: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(children: [
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Mesaj: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                              text:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when .",
                              style: TextStyle(color: Colors.black)),
                        ]),
                      ),
                      Divider(
                        thickness: 1.5,
                        indent: 30,
                        endIndent: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {},
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'Ek: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                  text: "deger_ekleme.png",
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline)),
                            ]),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            Card(
              elevation: 20,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        50,
                      ),
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(50))),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.green[50],
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black54,
                        )),
                    title: Text("Suzan ÇETİN"),
                    subtitle: Text("22/12/2023"),
                  ),
                  Divider(
                    thickness: 1.5,
                    indent: 30,
                    endIndent: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(children: [
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Mesaj: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                              text:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when .",
                              style: TextStyle(color: Colors.black)),
                        ]),
                      ),
                      Divider(
                        thickness: 1.5,
                        indent: 30,
                        endIndent: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {},
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'Ek: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: "deger_ekleme.png",
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        
          label: Text(
            'Mesaj Ekle',
            style: TextStyle(fontSize: 20),
          ),
          icon: Icon(Icons.post_add_outlined),
          backgroundColor: Colors.green[900],
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  
                  builder: (context, setState) {
                    return SingleChildScrollView(
                      child: Custom_MessageAlertDialog(context, setState),
                    );
                  },
                );
              },
            );
          }),
    );
  }
}

class CustomBorderTextField extends StatelessWidget {
  const CustomBorderTextField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.height,
    this.hintText,
    this.width,
    this.maxLines,
    this.onChanged,
    this.textEditingController,
    this.decoration,
  });

  final String? labelText;
  final IconData? prefixIcon;
  final double? height;
  final String? hintText;
  final double? width;
  final int? maxLines;
  final Function(String)? onChanged;
  final TextEditingController? textEditingController;
  final InputDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: onChanged,
      maxLines: maxLines,
      
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.grey,
          size: 20,
        ),
        labelText: labelText,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      ),
    );
  }
}
