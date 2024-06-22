import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
      ),
    );
  }
}
