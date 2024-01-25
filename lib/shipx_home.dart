import 'package:flutter/material.dart';

class ShipXHome extends StatefulWidget {
  const ShipXHome({super.key});

  @override
  State<ShipXHome> createState() => _ShipXHomeState();
}

class _ShipXHomeState extends State<ShipXHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        
        title: Text("Browse platform", textAlign: TextAlign.center,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(249, 75, 24, 1),
        unselectedItemColor: Colors.grey[800],
        items: const [  
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
            ),
             BottomNavigationBarItem(   
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Order"
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.restore_rounded),
            label: "History"
            ),
        ],),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,),
                          child: Image(
                            image: AssetImage('assets/shein logo.png'))
                            ),
                        Text("Shein", style: TextStyle(color: Colors.white, fontSize: 16, height: 1.5),)
                      ],
                    ),
                    onTap: (){
                      Navigator.of(context).pushNamed('/webviewcontainer');
                    },
                  ),
                  // SizedBox(width: 30,),
                   Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/asos logo.png'), ),
                        )
                          ),
                      Text("Asos", style: TextStyle(color: Colors.white, fontSize: 16),)

                    ],
                  ),
                  // SizedBox(width: 30,),
                   Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,),
                        child: Image(
                          image: AssetImage('assets/amazon logo.png') )
                          ),
                      Text("Amazon", style: TextStyle(color: Colors.white, fontSize: 16),)

                    ],
                  ),
                       // SizedBox(width: 30,),
                   Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,),
                        
                          child: Image(
                            image: AssetImage('assets/zara icon.png'), ),
                        
                          ),
                      Text("Zara", style: TextStyle(color: Colors.white, fontSize: 16),)

                    ],
                  ),
                     
                ],
              ),
            )
          ],
        ),
     
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _navigateToWebsite('https://www.shein.com'), // Navigate to a different URL
      //   child: const Icon(Icons.shopping_bag),
      // ),
    );
  }
}