import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewAsos extends StatefulWidget {
  const WebViewAsos({super.key});

  @override
  State<WebViewAsos> createState() => _WebViewAsosState();
}

class _WebViewAsosState extends State<WebViewAsos> {

  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled) //disable javascript to minimize attacks - for security
  ..loadRequest(Uri.parse('https://www.asos.com/'));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Brows your faves"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}