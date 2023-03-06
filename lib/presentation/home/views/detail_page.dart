import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:mia_support_system/presentation/home/views/add_message.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            FocusScope.of(context).unfocus();
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
        title: Center(child: Text('İstek Detayları')),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: ExpansionTileCard(
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          ' Durum: Henüz Çözülmedi.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(fontSize: 16),
                        ),
                        Text(
                          'Toplam İşlem Günü: 7 Gün/ 2 Saat',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(fontSize: 16),
                        )
                      ],
                    ),
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
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(4.0)),
                    //   ),
                    //   onPressed: () {
                    //     cardA.currentState?.collapse();
                    //   },
                    //   child: Column(
                    //     children: <Widget>[
                    //       Icon(Icons.arrow_upward),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(vertical: 2.0),
                    //       ),
                    //       Text('Close'),
                    //     ],
                    //   ),
                    // ),
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AlertDialog(
                  title: Text('Yeni Mesaj Gönder'),
                ),
              ));
        },
        label: Text('Mesaj Ekle'),
        icon: Icon(Icons.post_add_outlined),
        backgroundColor: Colors.orange[900],
      ),
    );
  }
}
