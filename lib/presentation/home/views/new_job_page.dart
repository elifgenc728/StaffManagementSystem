import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/home/views/detail_page.dart';

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
      body: Column(
        children: [
          SizedBox(height: 18,),
          Center(
            child: Container(
              width: 350,
              height: 150,
              color: Colors.blue[50],
              
              child: Card(
                elevation: 10,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
          SizedBox(height: 40,),
          
        ],
      ),
      
    );
  }
}
