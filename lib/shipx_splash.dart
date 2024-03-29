// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ShipXSplash extends StatelessWidget {
  const ShipXSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image(image: AssetImage('assets/image.png')),
            SizedBox(height: 20,),
            Text("Pre-order your fashion faves. Fast & Hassle-free.", 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black, 
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 1.4),),

            SizedBox(height: 20,),
            Text("Enjoy exclusive pre-order access and order management with ShipX.", 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black, 
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 1.5),),

            SizedBox(height: 50,),
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
          SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",  style: TextStyle(fontFamily: 'poppins', fontSize: 14, color: Colors.grey[800], fontWeight: FontWeight.w600),),
                        TextButton(
                          onPressed: (){
                          Navigator.pushNamed(context, '/login');
                        }, 
                        child: Text("Sign in", style: TextStyle(
                          fontWeight: FontWeight.bold, color:Color.fromRGBO(249, 75, 24, 1),  fontFamily: 'poppins', fontSize: 14,))
                        )
                      ], 
                    ),
                  
                
          
            ],
          ),
        ),
      ),
    );
  }
}