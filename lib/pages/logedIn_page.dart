import 'package:flutter/material.dart';
import 'package:rappiappg8/pages/home_page.dart';
import 'package:rappiappg8/pages/init_page.dart';
import 'package:rappiappg8/pages/login_page.dart';

class LoggedInPage extends StatelessWidget {
  bool isLoogedIn = false;
  LoggedInPage({required this.isLoogedIn});

  @override
  Widget build(BuildContext context) {
    return isLoogedIn == false ? InitPage() : HomePage();
  }
}
