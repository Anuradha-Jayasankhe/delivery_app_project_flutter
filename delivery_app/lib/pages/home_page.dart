import 'package:delivery_app/components/my_currunt_location.dart';
import 'package:delivery_app/components/my_description_box.dart';
import 'package:delivery_app/components/my_drawer.dart';
import 'package:delivery_app/components/my_food_tile.dart';
import 'package:delivery_app/components/my_silver_app_bar.dart';
import 'package:delivery_app/components/my_tab_bar.dart';
import 'package:delivery_app/models/food.dart';
import 'package:delivery_app/models/resturent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //tab contaraller
  late TabController _TabController;

  @override
  void initState() {
    super.initState();
    _TabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _TabController.dispose();
    super.dispose();
  }

  //short ou and return a list of food items that belong o a specific cateory
  List<Food> _filterMenueByCategory(
      FoodCategory category, List<Food> fullmenu) {
    return fullmenu.where((food) => food.category == category).toList();
  }

  //returnlist of foods in given category

  List<Widget> getFoodInThisCategory(List<Food> fullmenu) {
    return FoodCategory.values.map((Category) {
      List<Food> categoryMenu = _filterMenueByCategory(Category, fullmenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(food: food, onTap: () {});
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            MySilverAppBar(
              title: MyTabBar(tabContraller: _TabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  //my currunt location
                  const MyCurruntLocation(),
                  //description box
                  const MyDescriptionBox()
                ],
              ),
            ),
          ];
        },
        body: Consumer<Resturant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _TabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
