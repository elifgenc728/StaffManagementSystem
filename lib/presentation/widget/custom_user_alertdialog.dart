import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/home/views/detail_page.dart';
import 'package:mia_support_system/presentation/widget/custom_chipwidget.dart';
import 'package:mia_support_system/presentation/widget/customadd_dropdown.dart';
import 'package:interval_time_picker/interval_time_picker.dart';
import 'custom_dropdown.dart';

StatefulBuilder Custom_UserAlertDialog(
    BuildContext context, StateSetter setState) {
  return StatefulBuilder(builder: (context, setState) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      icon: Column(
        children: [
          Row(
            children: [
              Text('Görevi Kullanıcıya Atama',
                  style: Theme.of(context).textTheme.headline6),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
          CustomAdd_Dropdown(),
          // Row(
          //   children: [
          //     Text(
          //       'Atanacak Kullanıcı : ',
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          //     ),
          //     CustomDropdown(),
          //   ],
          // ),
          CustomBorderTextField(
            height: 100,
            prefixIcon: Icons.message_outlined,
            labelText: " Bağlı İstek",
          ),
          SizedBox(
            height: 4,
          ),

          Row(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: 1,
                  height: 30,
                  child: CustomBorderTextField(
                    prefixIcon: Icons.alarm,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 10,
                child: CustomPriorityChips(),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Kullanıcıya Ata'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text('İsteği Kapat'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              )),
        ],
      ),
    );
  });
}
