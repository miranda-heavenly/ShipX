// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ShipXSplash extends StatelessWidget {
  const ShipXSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image(image: AssetImage('assets/image.png')),
          Text("Pre-order your fashion faves. Fast & Hassle-free.", 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, color: Colors.black, 
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: 1.4),),
          
          Text("Enjoy exclusive pre-order access and order management with ShipX.", 
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black, 
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: 1.5),),

          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/register');
            }, 
            child: Text("Create an account", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700),),
            style: ButtonStyle(
              minimumSize:MaterialStatePropertyAll(Size.fromHeight(60)),
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(249, 75, 24, 1)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
            ),
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
      ),
    );
  }
}