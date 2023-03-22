// import 'package:flutter/material.dart';

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
//     return DropdownButton(
//       value: timeChoose,
//       onChanged: (String? value) {
//         setState(() {
//           timeChoose = value!;
//         });
//       },
//       items: widget.dropdownList.map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
