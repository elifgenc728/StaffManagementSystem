import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:mia_support_system/presentation/home/views/job_pool.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

enum Durum { d1, d2, d3, d4 }

class _DetailPageState extends State<DetailPage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  Durum? _durum = Durum.d1;
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
              baseColor: Colors.cyan[20],
              expandedColor: Colors.red[50],
              key: cardA,
              // leading:
              //     CircleAvatar(child: Image.asset("assets/images/devs.jpg")),
              title:
                  Text('Kurum: Çanakkale Onsekiz Mart Üniversitesi Hastanesi'),
              subtitle: Text(
                "Açılma Tarihi: 27.02.2023",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Align(
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
                      )
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceAround,
                  buttonHeight: 52.0,
                  buttonMinWidth: 90.0,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                      ),
                      onPressed: () {
                        cardA.currentState?.expand();
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.print_rounded),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          // Text('Open'),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                      ),
                      onPressed: () {},
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.recycling),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          // Text('Toggle'),
                        ],
                      ),
                    ),
                  ],
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
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        icon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Yeni Mesaj Gönder",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close))),
                          ],
                        ),
                        content: Column(
                          children: [
                            CustomBorderTextField(
                              prefixIcon: Icons.subject_outlined,
                              labelText: "Konu",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            CustomBorderTextField(
                                prefixIcon: Icons.message_outlined,
                                labelText: "Mesajınız"),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: const Text('Çözüldü'),
                                  leading: Radio<Durum>(
                                    value: Durum.d1,
                                    groupValue: _durum,
                                    onChanged: (Durum? value) {
                                      setState(() {
                                        _durum = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: const Text('İlgileniliyor'),
                                  leading: Radio<Durum>(
                                    value: Durum.d2,
                                    groupValue: _durum,
                                    onChanged: (Durum? value) {
                                      setState(() {
                                        _durum = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: const Text('Yapılmayacak'),
                                  leading: Radio<Durum>(
                                    value: Durum.d3,
                                    groupValue: _durum,
                                    onChanged: (Durum? value) {
                                      setState(() {
                                        _durum = value;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  title: const Text('Kapatıldı'),
                                  leading: Radio<Durum>(
                                    value: Durum.d4,
                                    groupValue: _durum,
                                    onChanged: (Durum? value) {
                                      setState(() {
                                        _durum = value;
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
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[900]),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Gönder",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
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
  });

  final String? labelText;
  final IconData? prefixIcon;

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
          color: Colors.blue[900],
        ),
        labelText: labelText,
        contentPadding: EdgeInsets.symmetric(vertical: 20),
      ),
    );
  }
}
