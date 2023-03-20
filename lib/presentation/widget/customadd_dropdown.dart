import 'package:flutter/material.dart';

const List<String> list = <String>['Elif', 'Cem', 'Ayşe'];

class CustomAdd_Dropdown extends StatefulWidget {
  @override
  _CustomAdd_DropdownState createState() => _CustomAdd_DropdownState();
}

class _CustomAdd_DropdownState extends State<CustomAdd_Dropdown> {
  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              height: 35,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(20.0)),
              child: DropdownButton(
                hint: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.person,
                      size: 20,
                    ),
                    Text(
                      'Atanacak Kullanıcı',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                dropdownColor: Colors.grey,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
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

const List<String> list1 = <String>['saat', 'dakika', 'gün', 'hafta', 'ay'];

class CustomTimeDropdown extends StatefulWidget {
  const CustomTimeDropdown({super.key});

  @override
  State<CustomTimeDropdown> createState() => _CustomTimeDropdownState();
}

class _CustomTimeDropdownState extends State<CustomTimeDropdown> {
  String? valueChooses;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          height: 35,
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(20.0)),
          child: DropdownButton(
            hint: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.person,
                  size: 20,
                ),
                Text(
                  'Atanacak Kullanıcı',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            dropdownColor: Colors.grey,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 30,
            isExpanded: true,
            underline: SizedBox(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
            value: valueChooses,
            onChanged: (String? val) {
              setState(() {
                valueChooses = val!;
              });
            },
            items: list1.map<DropdownMenuItem<String>>((String val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            }).toList(),
          ),
        ));
  }
}
