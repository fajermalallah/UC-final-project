import 'package:flutter/material.dart';

class Operations extends StatelessWidget {
  final iconImage;
  final String Location;
  final String PriceText;
  final Color;

  const Operations({
    Key? key,
    required this.iconImage,
    required this.Location,
    required this.PriceText,
    required this.Color,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            height: 90,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)),
            child: Image.asset(iconImage),
            width: 100,
          ),
        ]),
        Column(
          children: [
            Text(
              Location,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              PriceText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color,
              ),
            )
          ],
        )
      ],
    );
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
          child: Image.asset(
            iconImage,
            width: 100,
            height: 100,
          ),
        ),
        Column(
          children: [
            Text(
              Location,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              PriceText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color,
              ),
            )
          ],
        )
      ],
    );
  }
}
