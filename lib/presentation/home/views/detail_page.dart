import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:mia_support_system/presentation/home/views/job_pool.dart';

import '../../widget/custom_mesaggealertdialog.dart';

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
              baseColor: Colors.blue[50],
              expandedColor: Colors.white,
              key: cardA,
              // leading:
              //     CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
              title:
                  Text('Kurum: Çanakkale Onsekiz Mart Üniversitesi Hastanesi'),
              subtitle: Text(
                "Açılma Tarihi: 27.02.2023",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Durum: Henüz Çözülmedi.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(fontSize: 16),
                        ),
                        Text(
                          'Toplam İşlem Günü: 7 Gün / 2 Saat',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(fontSize: 16),
                        ),
                        Text("Önem Seviyesi: Normal"),
                        Text("İstek Türü: Yeni İstek")
                      ],
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
              color: Colors.blue[100],
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
                        backgroundColor: Colors.blue[50],
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black54,
                        )),
                    title: Text("Elif Genç"),
                    subtitle: Text("22.12.2023"),
                  ),
                  ListTile(
                    leading: Text("Konu:gfdgdgdf "),
                  ),
                  Divider(
                    thickness: 1.5,
                    indent: 30,
                    endIndent: 100,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                    child: Text(
                        "Mesaj: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when ."),
                  ),
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
                        backgroundColor: Colors.blue[50],
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black54,
                        )),
                    title: Text("Sena Çelik"),
                    subtitle: Text("22.12.2023"),
                  ),
                  ListTile(
                    leading: Text("Konu:gfdgdgdf "),
                  ),
                  Divider(
                    thickness: 1.5,
                    indent: 30,
                    endIndent: 100,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                    child: Text(
                        "Mesaj: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's  ."),
                  ),
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
          backgroundColor: Colors.blue[900],
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
   
  });

  final String? labelText;
  final IconData? prefixIcon;
  final int? height;
  final String? hintText;
  final int? width;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
        ),
        labelText: labelText,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 20),
      ),
    );
  }
}
