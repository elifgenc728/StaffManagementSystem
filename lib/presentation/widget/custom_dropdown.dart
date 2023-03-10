import 'package:flutter/material.dart';

const List<String> list = <String>['Elif', 'Cem', 'Ayşe'];

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: Align(
        alignment: Alignment.center,
        child: Text(
          "Kullanıcı Ata",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward_sharp, size: 15, color: Colors.blue[900]),
      elevation: 16,
      style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.w500),
      underline: Container(
        height: 2,
        color: Colors.blue[900],
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
