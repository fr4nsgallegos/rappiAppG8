import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget _buildInputField(String label, TextEditingController controller,
      {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  _buildLoginButton(BuildContext contextooooo) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(contextooooo, "/home");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        ),
        child: Text(
          'Iniciar sesión',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xffFA4C39),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFA4C39),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png"),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Inicia sesión",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                _buildInputField("Usuario", userController),
                _buildInputField("Contraseña ", passwordController,
                    isPassword: true),
                SizedBox(
                  height: 30,
                ),
                _buildLoginButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
