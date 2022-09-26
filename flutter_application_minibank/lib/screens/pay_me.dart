import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_minibank/screens/login_screen.dart';
import 'package:flutter_application_minibank/screens/message_screen.dart';
import 'package:flutter_application_minibank/widget/bankcard.dart';

class PayMeScreen extends StatelessWidget {
  const PayMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              ),
            )),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Tittle
                    Row(
                      children: [
                        Text(
                          'Select Account ',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    // Add cards button
                  ],
                ),
              ),
              SizedBox(height: 25),

              // Cards
              Container(
                height: 200,
                child: PageView(scrollDirection: Axis.horizontal, children: [
                  BankCards(
                      bankName: 'Boubyan',
                      money: 2434.50,
                      cardNumber: 1122456,
                      expiryMonth: 11,
                      expiryYear: 25,
                      color: Color.fromARGB(220, 238, 161, 227)),
                  BankCards(
                    
                      bankName: 'KFH',
                      money: 5734.20,
                      cardNumber: 1293647,
                      expiryMonth: 02,
                      expiryYear: 27,
                      color: Color.fromARGB(222, 142, 200, 234)),
                  BankCards(
                    
                      bankName: 'NBK',
                      money: 5198.30,
                      cardNumber: 935753,
                      expiryMonth: 09,
                      expiryYear: 23,
                      color: Color.fromARGB(222, 126, 201, 160)),
                  BankCards(
                    
                      bankName: 'CBK',
                      money: 4298.30,
                      cardNumber: 635153,
                      expiryMonth: 01,
                      expiryYear: 29,
                      color: Color.fromARGB(222, 203, 224, 109)),
                ]),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: <Widget>[
                    inputFile(
                        label: "Sender's Name",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    inputFile(
                        label: "Amount",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    inputFile(
                      label: "Phone Number",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  child: const Text('Generate Link'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            child: AlertDialog(
                              title: Text('The Link has sent to The User'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Back'))
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
