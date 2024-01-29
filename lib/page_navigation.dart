import 'package:flutter/material.dart';
import 'package:shipx/bottom_nav_pages/my_account.dart';
import 'package:shipx/bottom_nav_pages/shipx_home.dart';
import 'package:shipx/bottom_nav_pages/shopping_cart.dart';
import 'package:shipx/bottom_nav_pages/track_order.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

List pages = [
  ShipXHome(),
  ShoppingCart(),
  TrackOrder(isOrdered: true, isProcessing: true, isDelivered: false, isDispatched: false, ),
  MyAccount(),
];

int _selectedIndex = 0;

void onTap(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.av_timer_outlined), label: "Track"),
          BottomNavigationBarItem(
             icon: Icon(Icons.person_2_outlined), label: "Account"),
        ],
      ),
        body: pages[_selectedIndex],
    );
  }}