import 'package:flutter/material.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:async/async.dart';

class Custom_ChipWidget extends StatefulWidget {
  @override
  _MyThreeOptionsState createState() => _MyThreeOptionsState();
}

class _MyThreeOptionsState extends State<Custom_ChipWidget> {
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

