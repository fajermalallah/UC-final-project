import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  final iconImage;
  final String buttonText;

  const buttons({
  Key? key,
  required this.iconImage,
  required this.buttonText,

     }) : super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Icon
        Container(
          height: 85,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 20,
                  spreadRadius: 2,
                )
              ]),
          child: Center(
            child: Image.asset(iconImage),
          ),
        ),
        SizedBox(height: 10),
        //Text
        Text(
        buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
