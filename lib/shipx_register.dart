// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ShipXRegister extends StatefulWidget {
  const ShipXRegister({super.key});

  @override
  State<ShipXRegister> createState() => _ShipXRegisterState();
}

class _ShipXRegisterState extends State<ShipXRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/logo.png'),
            width: 200,
          ),
          Column(
            children: [
              Text(
                "Create an account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.4),
              ),
              Text(
                "Fill your details to create an account with ShipX and pre-order with confidence and convenience",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.5),
              ),
            ],
          ),
          Material(
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      // prefixIcon: Icon(Icons.email),
                      labelText: "Email address"),
                ),
                TextFormField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      // prefixIcon: Icon(Icons.phone),
                      labelText: "Phone numer"),
                ),
                TextFormField(
                  controller: TextEditingController(),
                  obscureText: true,
                  decoration: InputDecoration(
                      // prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      labelText: "Password"),
                ),
       
              ],
            )),
          )
                  , ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStatePropertyAll(Size.fromHeight(60)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(249, 75, 24, 1)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                ),

               Stack(
                alignment: Alignment.center,
                children: [
                   Divider(
                  color: Colors.black.withAlpha(100),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  color: Colors.white,
                  child: Text("Or sign up with",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                     ),
                  ),
                )
                ],
               ),

                    Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: (){}, 
                icon: Image.asset("assets/google1.png", width: 24,), 
                label: Text("Google"),
                style: ButtonStyle(
                  elevation:MaterialStatePropertyAll(5),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                ),       
                ),
                SizedBox(width: 20,),
                 ElevatedButton.icon(
                onPressed: (){}, 
                icon: Image.asset("assets/facebook1.png", width: 24,), 
                label: Text("Facebook"),
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(5),
                  backgroundColor:MaterialStateProperty.all(Colors.white),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                ),
                )
            ],
          ),
           RichText(
              text: TextSpan(
                style: TextStyle(fontFamily: 'poppins', fontSize: 14, color: Colors.grey[700],),
                children: [
                  TextSpan(text: "Already have an account? "),
                  TextSpan(text: "Sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromRGBO(249, 75, 24, 1) ),
                  recognizer: TapGestureRecognizer()
                  )
                ]
              ))
        ],
      ),
    );
  }
}
