import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: Container(),
          automaticallyImplyLeading: false,
        ),
      ),
    );
  }
}
