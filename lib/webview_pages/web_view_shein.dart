import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewShein extends StatefulWidget {
  const WebViewShein({super.key});

  @override
  State<WebViewShein> createState() => _WebViewSheinState();
}

class _WebViewSheinState extends State<WebViewShein> {
  final controller = WebViewController();
  String productUrl = '';
  bool isAddToCartPopupVisible = false;

  List<Map<String, dynamic>> productDetails = [];

final navigationDelegate = NavigationDelegate(
    onNavigationRequest: (NavigationRequest request) {
      if (request.url.startsWith('https://www.shein.com/product/')) {
        // Retrieve the product URL
        final productUrl = request.url;
        print("Product URL: $productUrl");

        // ... (handle add to cart logic here)
      }
      return NavigationDecision.navigate; // Allow navigation to proceed
    },
  );


  @override
  void initState() {
    super.initState();
    controller.setJavaScriptMode(JavaScriptMode.disabled);
    controller.loadRequest(Uri.parse('https://www.shein.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brows your faves"),
      ),
      body: Stack(
        children: [
          WebViewWidget(
          controller: controller,
          // navigationDelegate: navigationDelegate,
          // javascriptMode: JavascriptMode.unrestricted,
          // navigationDelegate: navigationDelegate,
          ),
          
          if (isAddToCartPopupVisible)
            _buildAddToCartPopup(context),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  isAddToCartPopupVisible = true;
                });
              },
              child: Icon(Icons.add_shopping_cart),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartPopup(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Material(
        color: Colors.white,
        elevation: 8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text("Add Product Details", style: Theme.of(context).textTheme.headline6),
                Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isAddToCartPopupVisible = false;
                    });
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            // ... (build the rest of the form with dropdown, input, and add button)
          ],
        ),
      ),
    );
  }

  // Function to handle form submission and URL retrieval
  void onAddToCartSubmit() {
    // Get product details from the form
    // ...

    // Retrieve the product URL
    print("Product URL: $productUrl");

    // Add product to cart (simulated)
    print("Product added to cart with details: $productDetails");

    // Close the popup
    setState(() {
      isAddToCartPopupVisible = false;
    });
  }
}
