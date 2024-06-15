// ignore_for_file: use_build_context_synchronously

import 'package:delivery_app/components/my_butto.dart';
import 'package:delivery_app/components/mytextfield.dart';
import 'package:delivery_app/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();

  //register method

  void register() async {
    //get auth service
    final authService = AuthService();

    //check if password match ->create user
    if (passwordcontroller.text == confirmpasswordcontroller.text) {
      //try creating user
      try {
        await authService.signUpWithEmailPassword(
            emailcontroller.text, passwordcontroller.text);
      }
      //display any errors
      catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }

    //if password don't match-> show error
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Password Don't Match"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
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
              height: 10,
            ),

            //message,app slogan
            Text(
              "Let's create Account",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //email textfeild
            MyTextField(
              controler: emailcontroller,
              hinText: "Email",
              abscureText: false,
            ),
            const SizedBox(
              height: 10,
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
            //confirm password
            MyTextField(
              controler: confirmpasswordcontroller,
              hinText: "Confirm Password",
              abscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            //sign up button
            MyButton(onTap: register, text: "Sign Up"),

            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have account",
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
                    "Login Now",
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
    );
  }
}
