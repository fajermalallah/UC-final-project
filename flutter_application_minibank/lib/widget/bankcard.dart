import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BankCards extends StatelessWidget {
  final double money;
  final String bankName;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  

  const BankCards({
    Key? key,
    required this.money,
    required this.bankName,
    required this.cardNumber,
    required this.color,
    required this.expiryMonth,
    required this.expiryYear,
    
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                bankName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Balance',
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              SizedBox(
                height: 15,
              ),
              Text('KD' + money.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardNumber.toString(),
                      style: TextStyle(color: Colors.white)),
                  Text(expiryMonth.toString() + '/' + expiryYear.toString(),
                      style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          )),
    );
  }
}
