import 'package:flutter/material.dart';

import '../pages/detail_page.dart';


class CustomDetailTextButton extends StatelessWidget {
  const CustomDetailTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 0.0,
      ),
      child: InkWell(
        child: Row(
          children: [
            Text('Detay',
                style: TextStyle(
                    fontSize: 15.2,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.green[900])),
            SizedBox(
              width: 8,
            ),
            Icon(
              // Icons.supervised_user_circle_rounded,
              Icons.arrow_forward_ios, size: 13,
              color: Colors.green[900],
            ),
          ],
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailPage()));
        },
      ),
    );
  }
}
