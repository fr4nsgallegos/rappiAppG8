import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartPage extends StatelessWidget {
  String variableCart = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("CART PAGE"),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                variableCart = preferences.getString('username') ??
                    "No ha sido asignada ningun valor a username";
                print(variableCart);
              },
              child: Text("Load username from shared preferences"),
            ),
          ],
        ),
      ),
    );
  }
}
