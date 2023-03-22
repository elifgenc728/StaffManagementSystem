import 'package:flutter/material.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:async/async.dart';

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
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
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
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 25.0,
                  children: List<Widget>.generate(5, (int index) {
                    return FilterChip(
                        label: Text(choiceChipsLists[index]),
                        selectedColor: Colors.purple[200],
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
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('İstek Türü:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
                        selectedColor: Colors.red[200],
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
    return Card(
        child: Column(
      children: <Widget>[
        Text('Yapılma Süresi'),
        Divider(
          thickness: 2,
        ),
        Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 22.0,
          children: List<Widget>.generate(5, (int index) {
            return FilterChip(
                label: Text(list1[index]),
                selected: val == index,
                onSelected: (bool selected) {
                  setState(() {
                    val = selected ? index : 0;
                  });
                });
          }).toList(),
        )
      ],
    ));
  }
}
