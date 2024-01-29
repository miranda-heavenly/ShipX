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
      backgroundColor: Color.fromRGBO(249, 75, 24, 1).withAlpha(70),
      appBar: AppBar(
        // actions: [
        //     Padding(
        //       padding: EdgeInsets.only(right: 30),
        //       child: IconButton(
        //         icon: const Icon(Icons.shopping_cart_outlined),
        //         tooltip: 'Open shopping cart',
        //         onPressed: () {
        //           // handle the press
        //         },
        //       ),
        //     ),
        //   ],

        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Browse platform",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
        ),
      ),
 
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
                            color: Colors.white,
                          ),
                          child: Image(
                              image: AssetImage('assets/shein logo.png'))),
                      Text(
                        "Shein",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16, height: 1.5),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/webviewshein');
                  },
                ),
                // SizedBox(width: 30,),
                GestureDetector(
                  child: Column(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage('assets/asos logo.png'),
                            ),
                          )),
                      Text(
                        "Asos",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/webviewasos');
                  },
                ),
                // SizedBox(width: 30,),
                GestureDetector(
                  child: Column(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Image(
                              image: AssetImage('assets/amazon logo.png'))),
                      Text(
                        "Amazon",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/webviewamazon');
                  },
                ),
                // SizedBox(width: 30,),
                GestureDetector(
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Image(
                          image: AssetImage('assets/zara icon.png'),
                        ),
                      ),
                      Text(
                        "Zara",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/webviewzara');
                  },
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
