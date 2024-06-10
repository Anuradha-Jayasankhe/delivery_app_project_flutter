import 'package:delivery_app/auth/login_or_register.dart';
import 'package:delivery_app/models/resturent.dart';
import 'package:delivery_app/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      //teame
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      //resturent
      ChangeNotifierProvider(
        create: (context) => Resturant(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: const LoginOrRegister());
  }
}
