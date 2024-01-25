// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ShipXLogin extends StatefulWidget {
  const ShipXLogin({super.key});

  @override
  State<ShipXLogin> createState() => _ShipXLoginState();
}

class _ShipXLoginState extends State<ShipXLogin> {
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
                "Welcome Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1.4),
              ),
              SizedBox(height: 5,),
              Text(
                "Log in with the information you provided during your registration, and let's get shopping!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
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
                      labelText: "Email or Phone"),
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
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text("Forgot password?",
            textAlign: TextAlign.end,
            style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w700, color: Color.fromRGBO(249, 75, 24, 1)),
            ),
          ),
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    "Sign in",
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
                  child: Text("Or sign in with",
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
          
           
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",  style: TextStyle(fontFamily: 'poppins', fontSize: 14, color: Colors.grey[800], fontWeight: FontWeight.w600),),
                      TextButton(
                        onPressed: (){
                        Navigator.pushNamed(context, '/register');
                      }, 
                      child: Text("Sign up", style: TextStyle(
                        fontWeight: FontWeight.bold, color:Color.fromRGBO(249, 75, 24, 1),  fontFamily: 'poppins', fontSize: 14,))
                      )
                    ], 
                  ),
              
              
        ],
      ),
    );
  }
}
