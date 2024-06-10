import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabContraller;
  const MyTabBar({super.key, required this.tabContraller});

  List<Tab> _buildcategorytabs() {
    return FoodCategory.values.map((Category) {
      return Tab(
        text: Category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(controller: tabContraller, tabs: _buildcategorytabs());
  }
}
