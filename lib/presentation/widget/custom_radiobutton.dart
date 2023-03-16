// import 'package:flutter/material.dart';

// enum RequestTypeEnum { a1, a2, a3 }

// class MyRadioButton extends StatelessWidget {
//   MyRadioButton({
//     Key? key,
//     required this.value,
//     required this.requestTypeEnum,
//     required this.onChanged,
//     required this.title,
//     RequestTypeEnum? groupValue,
//   }) : super(key: key);

//   String title;
//   RequestTypeEnum value;
//   RequestTypeEnum? requestTypeEnum;
//   Function(RequestTypeEnum?)? onChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: RadioListTile<RequestTypeEnum>(
//       contentPadding: EdgeInsets.all(0.0),
//       value: value,
//       groupValue: requestTypeEnum,
//       dense: true,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
//       tileColor: Colors.blue[50],
//       onChanged: onChanged,
//     ));
//   }
// }

// class CustomRequestRadiobutton extends StatefulWidget {
//   const CustomRequestRadiobutton({super.key});

//   @override
//   State<CustomRequestRadiobutton> createState() =>
//       _CustomRequestRadiobuttonState();
// }

// class _CustomRequestRadiobuttonState extends State<CustomRequestRadiobutton> {
//   RequestTypeEnum? requestTypeEnum;
//   String? title;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 200,
//       child: Padding(
//         padding: const EdgeInsets.all(38.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'İstek Türü',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 4,
//             ),
//             Row(
//               children: <Widget>[
//                 RadioListTile<RequestTypeEnum>(
//                     title: Text("Yeni İstek"),
//                     value: RequestTypeEnum.a1,
//                     groupValue: requestTypeEnum,
//                     // requestTypeEnum: requestTypeEnum,
//                     onChanged: (RequestTypeEnum? val) {
//                       setState(() {
//                         requestTypeEnum = val;
//                       });
//                     }),
//                 SizedBox(
//                   width: 8.0,
//                 ),
//                 RadioListTile<RequestTypeEnum>(
//                     title: Text("Problem Çözüm"),
//                     value: RequestTypeEnum.a2,
//                     groupValue: requestTypeEnum,
//                     // requestTypeEnum: requestTypeEnum,
//                     onChanged: (RequestTypeEnum? val) {
//                       setState(() {
//                         requestTypeEnum = val;
//                       });
//                     }),
//                 SizedBox(
//                   width: 8.0,
//                 ),
//                 RadioListTile<RequestTypeEnum>(
//                     title: Text("Değişiklik İsteği"),
//                     value: RequestTypeEnum.a3,
//                     groupValue: requestTypeEnum,
//                     onChanged: (RequestTypeEnum? val) {
//                       setState(() {
//                         requestTypeEnum = val;
//                       });
//                     }),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
