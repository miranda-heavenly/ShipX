import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewShein extends StatefulWidget {
  const WebViewShein({super.key});

  @override
  State<WebViewShein> createState() => _WebViewSheinState();
}

class _WebViewSheinState extends State<WebViewShein> {

  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled) //disable javascript to minimize attacks - for security
  ..loadRequest(Uri.parse('https://www.shein.com/'));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Browse your faves"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}