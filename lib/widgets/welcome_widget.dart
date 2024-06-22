import 'package:flutter/material.dart';
import 'package:rappiappg8/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  String imagePath;
  Color color;
  bool showButton;
  WelcomeWidget({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.color,
    this.showButton = false,
  });

  void setFirstTimeOnApp() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setBool("firstTime", false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 45),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0),
              child: Image.asset(
                imagePath,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              maxLines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            showButton
                ? ElevatedButton(
                    onPressed: () {
                      setFirstTimeOnApp();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      "¡Vamos!",
                      style: TextStyle(color: Colors.orange),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
