import 'package:flutter/material.dart';
import 'package:shipx/shipx_home.dart';
import 'package:shipx/shipx_login.dart';
import 'package:shipx/shipx_register.dart';
import 'package:shipx/shipx_splash.dart';
import 'package:shipx/web_view_container.dart';

class ShipXApp extends StatelessWidget {
  const ShipXApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/splash",
      routes: <String, WidgetBuilder>{
        "/login":(context) => const ShipXLogin(),
        "/register":(context) => const ShipXRegister(),
        "/home":(context) => const ShipXHome(),
        "/splash":(context) => const ShipXSplash(),
        "/webviewcontainer":(context) => const WebViewContainer()
      }
      //  home: const ShipXHome(),
    );
  }
}

