// import 'package:flutter/material.dart';

// enum RequestType { a1, a2, a3 }

// class CustomRadioButton extends StatefulWidget {
//   const CustomRadioButton({super.key});

//   @override
//   State<CustomRadioButton> createState() => _CustomRadioButtonState();
// }

// class _CustomRadioButtonState extends State<CustomRadioButton> {
//   RequestType? request = RequestType.a1;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("İstek Türü"),
//         Row(
//           children: [
//             RadioMenuButton(
//                 child: Text(
//                   "Yeni İstek",
//                   maxLines: 2,
//                 ),
//                 value: RequestType.a1,
//                 groupValue: request,
//                 onChanged: (RequestType? value) {
//                   setState(() {
//                     request = value;
//                   });
//                 }),
//             RadioMenuButton(
//                 child: Text(
//                   "Problem Çözüm",
//                   maxLines: 2,
//                 ),
//                 value: RequestType.a2,
//                 groupValue: request,
//                 onChanged: (RequestType? value) {
//                   setState(() {
//                     request = value;
//                   });
//                 }),
//             RadioMenuButton(
//                 child: Text(
//                   "Değişiklik İsteği",
//                   maxLines: 2,
//                 ),
//                 value: RequestType.a3,
//                 groupValue: request,
//                 onChanged: (RequestType? value) {
//                   setState(() {
//                     request = value;
//                   });
//                 })
//           ],
//         ),
//       ],
//     );
//   }
// }
