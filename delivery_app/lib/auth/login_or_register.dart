import 'package:delivery_app/pages/loginpage.dart';
import 'package:delivery_app/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
// initiali show loging page\
  bool showLoginPage = true;
//tagle between login and register
  void togglepages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Loginpage(onTap: togglepages);
    } else {
      return RegisterPage(
        onTap: togglepages,
      );
    }
  }
}
