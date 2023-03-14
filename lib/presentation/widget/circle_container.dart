import 'dart:ui';
import 'package:flutter/material.dart';

class CircleContainerWidget extends StatefulWidget {
  const CircleContainerWidget({super.key});

  @override
  State<CircleContainerWidget> createState() => _CircleContainerWidgetState();
}

class _CircleContainerWidgetState extends State<CircleContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.brown[200],
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey.shade800, width: 8),
        ),
        child: Center(
            child: Text("4",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20))));
  }
}
