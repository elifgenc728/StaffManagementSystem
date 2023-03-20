// import 'package:flutter/material.dart';

// const List<String> list = <String>['Elif', 'Cem', 'Ayşe'];

// class CustomDropdown extends StatefulWidget {
//   const CustomDropdown({super.key});

//   @override
//   State<CustomDropdown> createState() => _CustomDropdownState();
// }

// class _CustomDropdownState extends State<CustomDropdown> {
//   String dropdownValue = list.first;
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       hint: Align(
//         alignment: Alignment.center,
//         child: Text(
//           "Kullanıcı Ata",
//           style: TextStyle(color: Colors.grey),
//         ),
//       ),
//       value: dropdownValue,
//       icon: Icon(Icons.arrow_downward_sharp, size: 15, color: Colors.grey[800]),
//       elevation: 16,
//       style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w500),
//       underline: Container(
//         height: 1.20,
//         color: Colors.grey[800],
//       ),
//       onChanged: (String? value) {
//         setState(() {
//           dropdownValue = value!;
//         });
//       },
//       items: list.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }

// class CustomTimeDropdownWidget extends StatefulWidget {
//   const CustomTimeDropdownWidget({super.key, required this.dropdownList});
//   final List<String> dropdownList;

//   @override
//   State<CustomTimeDropdownWidget> createState() =>
//       _CustomTimeDropdownWidgetState();
// }

// class _CustomTimeDropdownWidgetState extends State<CustomTimeDropdownWidget> {
//   @override
//   Widget build(BuildContext context) {
//     String timeChoose = widget.dropdownList.first;
//     return Container(
//       width: 5,
//       child: DropdownButton(
//         value: timeChoose,
//         onChanged: (String? value) {
//           setState(() {
//             timeChoose = value!;
//           });
//         },
//         items:
//             widget.dropdownList.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
           
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
