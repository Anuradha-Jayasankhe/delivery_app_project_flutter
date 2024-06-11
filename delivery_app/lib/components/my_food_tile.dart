import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(children: [
              //text food details
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.name),
                  Text(
                    '\Rs' + food.price.toString(),
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    food.description,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              )),
              //food image
              SizedBox(
                width: 15,
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  food.imagePath,
                  fit: BoxFit.cover,
                  height: 120,
                ),
              ),
            ]),
          ),
        ),
        //devider line
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
