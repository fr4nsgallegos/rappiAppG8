import 'package:flutter/material.dart';
import 'package:rappiappg8/pages/home_page.dart';
import 'package:rappiappg8/pages/init_page.dart';
import 'package:rappiappg8/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      // home: InitPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => InitPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    ),
  );
}
