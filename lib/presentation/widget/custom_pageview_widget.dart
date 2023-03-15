import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

List<int> number = [
  16,
  8,
  7,
  1,
];

List<String> caption = [
  "Bugün Eklenen",
  "Şuan Açık",
  "Okunmuş",
  "Bana Atanmış"
];

List<IconData> icons = [
  Icons.add_to_home_screen_outlined,
  Icons.golf_course,
  Icons.done_all,
  Icons.face,
];

class CustomPageViewWidget extends StatelessWidget {
  CustomPageViewWidget({
    Key? key,
  }) : super(key: key);
  int statusCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: ListView.builder(
          itemCount: number.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        icons[index],
                        color: Colors.blue[900],
                        size: 32,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            number[index].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(caption[index])
                        ],
                      )
                    ],
                  )),
            );
          },
        ));
  }
}
 
