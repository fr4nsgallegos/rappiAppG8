import 'package:flutter/material.dart';
import 'package:rappiappg8/pages/home_page.dart';
import 'package:rappiappg8/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    ),
  );
}
