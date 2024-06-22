import 'package:flutter/material.dart';
import 'package:rappiappg8/pages/home_page.dart';
import 'package:rappiappg8/pages/init_page.dart';
import 'package:rappiappg8/pages/login_page.dart';
import 'package:rappiappg8/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoggedInPage extends StatefulWidget {
  bool isLoogedIn = false;
  LoggedInPage({required this.isLoogedIn});

  @override
  State<LoggedInPage> createState() => _LoggedInPageState();
}

class _LoggedInPageState extends State<LoggedInPage> {
  bool isFirstTimeOnApp = false;

  void getFirstTimeOnApp() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    isFirstTimeOnApp = preferences.getBool("firstTime") ?? true;
    print(isFirstTimeOnApp);
    setState(() {});
  }

  @override
  void initState() {
    getFirstTimeOnApp(); // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(isFirstTimeOnApp);
    // return isLoogedIn == false ? InitPage() : HomePage();
    return isFirstTimeOnApp == true ? WelcomePage() : HomePage();
    // return HomePage();
  }
}
