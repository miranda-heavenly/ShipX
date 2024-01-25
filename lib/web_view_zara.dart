import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewZara extends StatefulWidget {
  const WebViewZara({super.key});

  @override
  State<WebViewZara> createState() => _WebViewZaraState();
}

class _WebViewZaraState extends State<WebViewZara> {

  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled) //disable javascript to minimize attacks - for security
  ..loadRequest(Uri.parse('https://www.zara.com/'));

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