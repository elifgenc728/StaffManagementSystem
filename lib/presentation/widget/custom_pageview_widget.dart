import 'package:flutter/material.dart';

class Custom_PageViewWidget extends StatefulWidget {
  const Custom_PageViewWidget({super.key});

  @override
  State<Custom_PageViewWidget> createState() => _Custom_PageViewWidgetState();
}

class _Custom_PageViewWidgetState extends State<Custom_PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: PageView(
        children: [
          Container(
              height: 150.0,
              width: 20.0,
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.circular(50),
                // border: Border.all(color: Colors.grey, width: 8),
              ),
              child: Center(
                  child: ListTile(
                title: Text(
                  "16",
                  style: TextStyle(),
                ),
                subtitle: Text("Bugün Eklenen"),
              ))),
          Container(
              height: 150.0,
              width: 20.0,
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.circular(50),
                // border: Border.all(color: Colors.grey, width: 8),
              ),
              child: Center(
                  child: ListTile(
                title: Text(
                  "16",
                  style: TextStyle(),
                ),
                subtitle: Text("Bugün Eklenen"),
              ))),
          Container(
              height: MediaQuery.of(context).size.height * .35,
              width: 20.0,
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.circular(50),
                // border: Border.all(color: Colors.grey, width: 8),
              ),
              child: Center(
                  child: ListTile(
                title: Text(
                  "16",
                  style: TextStyle(),
                ),
                subtitle: Text("Bugün Eklenen"),
              ))),
        ],
      ),
    );
  }
}
