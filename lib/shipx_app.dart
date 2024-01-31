import 'package:flutter/material.dart';
import 'package:shipx/page_navigation.dart';
import 'package:shipx/shipx_login.dart';
import 'package:shipx/shipx_register.dart';
import 'package:shipx/shipx_splash.dart';
import 'package:shipx/webview_pages/web_view_amazon.dart';
import 'package:shipx/webview_pages/web_view_asos.dart';
import 'package:shipx/webview_pages/web_view_shein.dart';
import 'package:shipx/webview_pages/web_view_zara.dart';

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
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
        "/login":(context) => const ShipXLogin(),
        "/register":(context) => const ShipXRegister(),
        "/home":(context) => const NavigationPage(),
        "/splash":(context) => const ShipXSplash(),
        "/webviewshein":(context) => const WebViewShein(),
        "/webviewamazon":(context) => const WebViewAmazon(),
        "/webviewzara":(context) => const WebViewZara(),
        "/webviewasos":(context) => const WebViewAsos(),
      }
      //  home: const ShipXHome(),
    );
  }
}

