import 'package:flutter/material.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:async/async.dart';

import '../pages/detail_page.dart';


class CustomPriorityChips extends StatefulWidget {
  @override
  _CustomPriorityChipsState createState() => _CustomPriorityChipsState();
}

class _CustomPriorityChipsState extends State<CustomPriorityChips> {
  int? _value = 1;
  List<String> choiceChipsLists = [
    "Az Önemli",
    "Normal",
    "Acil",
    "Çok Önemli",
    "Önemli"
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Önem Seviyesi:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Divider(
              thickness: 2,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                children: List<Widget>.generate(5, (int index) {
                  return FilterChip(
                      label: Text(choiceChipsLists[index]),
                      selectedColor: Color.fromARGB(255, 121, 165, 123),
                      selected: _value == index,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? index : 0;
                        });
                      });
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//filterchip

class CustomRequestChips extends StatefulWidget {
  CustomRequestChips({super.key});

  @override
  State<CustomRequestChips> createState() => _CustomRequestChipsState();
}

class _CustomRequestChipsState extends State<CustomRequestChips> {
  int? values = 1;

  List<String> requestChipsLists = [
    "Yeni İstek",
    "Problem Çözüm",
    "Değişiklik İsteği",
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('İstek Türü:', style: TextStyle(fontWeight: FontWeight.bold)),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 22.0,
                children: List<Widget>.generate(3, (int index) {
                  return FilterChip(
                      label: Text(requestChipsLists[index]),
                      selectedColor: Color.fromARGB(255, 121, 165, 123),
                      selected: values == index,
                      onSelected: (bool selected) {
                        setState(() {
                          values = selected ? index : 0;
                        });
                      });
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTimeChips extends StatefulWidget {
  const CustomTimeChips({super.key});

  @override
  State<CustomTimeChips> createState() => _CustomTimeChipsState();
}

int? val = 1;

class _CustomTimeChipsState extends State<CustomTimeChips> {
  List<String> list1 = ['saat', 'dakika', 'gün', 'hafta', 'ay'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Görevin Yapılma Süresi',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                Divider(
                  thickness: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        // padding: EdgeInsets.only(right: 8),
                        child: CustomBorderTextField(
                          prefixIcon: Icons.alarm,
                          width: 16,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 12,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          width: 80,
                          height: 40,
                          child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 10,
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (context, index) => FilterChip(
                                  label: Text(list1[index]),
                                  selected: val == index,
                                  selectedColor: Color.fromARGB(255, 121, 165, 123),
                                  onSelected: (bool selected) {
                                    setState(() {
                                      val = selected ? index : 0;
                                    });
                                  })),
                        )),
                  ],
                )
                // Column(
                //   children: [
                //     Container(
                //       height: 40,
                //       padding: EdgeInsets.symmetric(horizontal: 20),
                //       child: CustomBorderTextField(
                //         prefixIcon: Icons.alarm,
                //         width: 20,
                //       ),
                //     ),
                //     SingleChildScrollView(
                //       scrollDirection: Axis.horizontal,
                //       child: Wrap(
                //         alignment: WrapAlignment.spaceAround,
                //         spacing: 15.0,
                //         runSpacing: 0.0,
                //         children: List<Widget>.generate(5, (int index) {
                //           return FilterChip(
                //               label: Text(list1[index]),
                //               selected: val == index,
                //               onSelected: (bool selected) {
                //                 setState(() {
                //                   val = selected ? index : 0;
                //                 });
                //               });
                //         }).toList(),
                //       ),
                //     )
                //   ],
                // ),
              ],
            ),
          )),
    );
  }
}
