import 'package:flutter/material.dart';
import 'package:shipx/shipx_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async { //continuously access the firebase db
  WidgetsFlutterBinding.ensureInitialized(); //Gives us access to the native code
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(
    const ShipXApp()
    );
}

