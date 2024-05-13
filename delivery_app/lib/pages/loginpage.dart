import 'package:delivery_app/components/mytextfield.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  Loginpage({super.key});

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
            )

            //password

            //sign in button

            // not a member ,join now
          ],
        ),
      ),
    );
  }
}
