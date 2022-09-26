import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_minibank/screens/login_screen.dart';
import 'package:flutter_application_minibank/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,

                        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                       Image.asset('icons/Logo.jpg',height: 70,width: 70,), 
                        Text(
                          "Mini",
                          style:
                              TextStyle(
                               fontSize: 40,
                                fontWeight: FontWeight.bold),
                        ),
                     Text(
                      "Bank",
                     style:
                         TextStyle(fontSize: 40),
                    ),
                    
                      ],
                    ),
                    
                  
                  ],
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    //padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        ),
                      
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInScreen()));
                      },
                      color: Color(0xff0095FF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    
                  ),
                ),
                
             
              ],
            ))
          ],
        ),
      ),
    );
  }
}