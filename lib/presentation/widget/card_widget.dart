import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  CustomCardWidget({
    super.key,
    required this.atananKisi,
    required this.gonderenKisi,
    required this.bitisTarihi,
    required this.gonderilenTarih,
    required this.durum,
  });
  final String atananKisi;
  final String gonderenKisi;
  final String bitisTarihi;
  final String gonderilenTarih;
  final String durum;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(atananKisi),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(gonderenKisi),
                  Text(bitisTarihi),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
