import 'package:delivery_app/components/my_drawer_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.food_bank,
              size: 60,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home list tyle
          MyDrawerTile(
            icon: Icons.home,
            onTap: () {},
            text: "Home",
          )
          //setting list tyle

          //logo list tile
        ],
      ),
    );
  }
}
