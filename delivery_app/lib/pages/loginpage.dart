// ignore_for_file: use_build_context_synchronously

import 'package:delivery_app/components/my_butto.dart';
import 'package:delivery_app/components/mytextfield.dart';
import 'package:delivery_app/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  final void Function()? onTap;
  const Loginpage({super.key, required this.onTap});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  //login method
  void login() async {
    /* 
    fill out authentication 
    */
    final authService = AuthService();

    //try sign in
    try {
      await authService.signInWithEmailPassword(
          emailcontroller.text, passwordcontroller.text);
    }

    //display any error
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  //forgot password
  void forgotpw() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("User tapped forgot password"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtE-T-KluZZVKAMW0m6gxwxYIc6oiNJDC5717RbFe0mA&s'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //message,app slogan
              Text(
                "Food Delivery AJ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //email textfeild
              MyTextField(
                controler: emailcontroller,
                hinText: "Email",
                abscureText: false,
              ),
              const SizedBox(
                height: 25,
              ),
              //password
              MyTextField(
                controler: passwordcontroller,
                hinText: "Password",
                abscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              //sign in button
              MyButton(onTap: login, text: "Sign in"),

              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
              // not a member ,join now
            ],
          ),
        ),
      ),
    );
  }
}
