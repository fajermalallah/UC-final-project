import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_minibank/screens/add_card.dart';
import 'package:flutter_application_minibank/screens/pay_me.dart';
import 'package:flutter_application_minibank/screens/seeall_screen.dart';
import 'package:flutter_application_minibank/widget/bankcard.dart';
import 'package:flutter_application_minibank/widget/button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            
            elevation: 4.0,   
            backgroundColor: Colors.grey[300],

            title: Text('MyBank',style: TextStyle(color: Colors.black),),
            actions: [
              IconButton(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddCard()));
              },
              icon: Icon(
                Icons.add,
                size: 20,
                color: Colors.black,
              ),
            )
             ],
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              ),
            )
             
                      
             
                        
            ),
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
                      color: Color.fromARGB(222, 173, 226, 74)),
                ]),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //PayMe
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PayMeScreen()));
                      },
                      child: buttons(
                          iconImage: 'icons/hand.png', buttonText: 'PayMe'),
                    ),

                    buttons(
                        iconImage: 'icons/certificate.png',
                        buttonText: 'Certificate')
                  ],
                ),
              ),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Activity',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SeeAllScreen()));
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Color.fromARGB(255, 129, 127, 127),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          'icons/Kfh.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'KNPC Shuhada',
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
                            '-4.5 KD',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 90,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset(
                                'icons/boubyan.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Trolley Khaldiya',
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
                                  '-7.5KD',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
        );
  }
}
