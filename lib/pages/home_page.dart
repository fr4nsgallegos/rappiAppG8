import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rappiappg8/pages/cart_page.dart';
import 'package:rappiappg8/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activePageIndex = 0;
  String nombreProducto = "Hambuerguesa doble";

  List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  void navigationBottomIndex(int index) {
    _activePageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          nombreProducto = "Makis";
          setState(() {});
        }),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            nombreProducto,
            style: TextStyle(color: Colors.orange),
          ),
          // leading: Container(),
          // automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: GNav(
          color: Colors.grey[400],
          activeColor: Colors.orange,
          tabActiveBorder: Border.all(color: Colors.red),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          gap: 8,
          // padding: EdgeInsets.all(8),
          onTabChange: (index) {
            print(index);
            navigationBottomIndex(index);
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Tienda",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Carrito",
            )
          ],
        ),
        body: _pages[_activePageIndex],
      ),
    );
  }
}
