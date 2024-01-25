import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewAmazon extends StatefulWidget {
  const WebViewAmazon({super.key});

  @override
  State<WebViewAmazon> createState() => _WebViewAmazonState();
}

class _WebViewAmazonState extends State<WebViewAmazon> {

  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled) //disable javascript to minimize attacks - for security
  ..loadRequest(Uri.parse('https://www.amazon.com/'));

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