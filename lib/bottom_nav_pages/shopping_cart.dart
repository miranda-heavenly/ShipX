import 'package:flutter/material.dart';

// This is a mock model class to represent a shopping item.
// In a real app, you'd fetch this data from a database or a service.
class ShoppingItem {
  final String title;
  final String description;
  final String imageUrl;
  final double price;

  ShoppingItem({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

class ShoppingCart extends StatelessWidget {
  ShoppingCart({super.key});

  // A mock list of shopping items.
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(
      title: 'Sleeveless Dress',
      description: 'Apricot Knee Length Dress',
      imageUrl: 'assets/dress.jpg', // Replace with actual image paths
      price: 27.99,
    ),
    ShoppingItem(
      title: 'Gothic Cuff Ring',
      description: 'Unique Jewelry For Men',
      imageUrl: 'assets/ring.jpg', // Replace with actual image paths
      price: 0.92,
    ),
    // Add more items as needed...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "My cart",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final item = shoppingItems[index];
          return ListTile(
            leading: Image.asset(item.imageUrl), // Display item image
            title: Text(item.title), // Display item title
            subtitle: Text(item.description), // Display item description
            trailing: Text(
                '\$${item.price.toStringAsFixed(2)}'), // Display item price
            onTap: () {
              // Handle item tap, possibly navigate to item detail page
            },
            // Checkbox to select items
          );
          
        },
      ),
      // Add a checkout button
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            // Handle checkout action
          },
          child: Text('Checkout'),
        ),
      ),
    );
  }
}
