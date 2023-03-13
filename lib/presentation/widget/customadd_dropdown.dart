import 'package:flutter/material.dart';

const List<String> list = <String>['Elif', 'Cem', 'Ayşe'];
List<String> list1 = <String>['saat', 'dakika', 'gün', 'hafta', 'ay'];

class CustomAdd_Dropdown extends StatefulWidget {
  @override
  _CustomAdd_DropdownState createState() => _CustomAdd_DropdownState();
}

class _CustomAdd_DropdownState extends State<CustomAdd_Dropdown> {
  String valueChoose = list.first;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(20.0)),
              child: DropdownButton(
                hint: Text('Atanacak Kullanıcıyı Seçiniz'),
                dropdownColor: Colors.grey,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                value: valueChoose,
                onChanged: (String? value) {
                  setState(() {
                    valueChoose = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )));
  }
}

