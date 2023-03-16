import 'package:flutter/material.dart';

class Custom_ChipWidget extends StatefulWidget {
  @override
  _MyThreeOptionsState createState() => _MyThreeOptionsState();
}

class _MyThreeOptionsState extends State<Custom_ChipWidget> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Önem Seviyesi:', style: TextStyle(fontWeight: FontWeight.bold)),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 50.0,
          children: <Widget>[
            ChoiceChip(
              pressElevation: 0.0,
              selectedColor: Colors.red,
              backgroundColor: Colors.grey[100],
              label: Text("Acil"),
              selected: _value == 0,
              onSelected: (bool selected) {
                setState(() {
                  _value = (selected ? 0 : 1);
                });
              },
            ),
            ChoiceChip(
              pressElevation: 0.0,
              selectedColor: Colors.green,
              backgroundColor: Colors.grey[100],
              label: Text("Normal"),
              selected: _value == 1,
              onSelected: (bool selected) {
                setState(() {
                  _value = (selected ? 1 : 0);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
//filterchip