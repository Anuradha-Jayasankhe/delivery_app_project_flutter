import 'package:delivery_app/components/my_drawer.dart';
import 'package:delivery_app/components/my_silver_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            MySilverAppBar(
              title: Text("H O M E",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary)),
              child: const Text("hello"),
            ),
          ];
        },
        body: Container(color: Colors.blue),
      ),
    );
  }
}
