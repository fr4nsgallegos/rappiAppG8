import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rappiappg8/pages/cart_page.dart';
import 'package:rappiappg8/pages/shop_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activePageIndex = 0;
  String nombreProducto = "Hambuerguesa doble";
  double precio = 0.0;
  String userName = "";
  String variable = "";

  void saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('username', "Jose Benito");
    await preferences.setString('nombreProducto', "Makis dobles");
    await preferences.setDouble('precio', 12.5);
  }

  void loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    variable = preferences.getString('username') ??
        "No ha sido asignada ningun valor a username";
    userName = preferences.getString("username") ?? "";
    nombreProducto = preferences.getString("nombreProducto") ?? nombreProducto;
    precio = preferences.getDouble("precio") ?? 0.0;
    setState(() {});
    print(variable);
  }

  List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  void navigationBottomIndex(int index) {
    _activePageIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    loadData();
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          print(userName);
          print(precio);
          print(variable);
        }),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            nombreProducto,
            style: TextStyle(color: Colors.orange),
          ),
          actions: [
            IconButton(
              onPressed: () {
                saveData();
              },
              icon: Icon(
                Icons.arrow_upward,
                color: Colors.orange,
              ),
            ),
            IconButton(
              onPressed: () {
                loadData();
              },
              icon: Icon(
                Icons.download,
                color: Colors.orange,
              ),
            ),
          ],
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
