import 'package:delivery_app/components/my_butto.dart';
import 'package:delivery_app/components/my_cart_tile.dart';
import 'package:delivery_app/models/resturent.dart';
import 'package:delivery_app/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, Resturant, child) {
        //cart

        final userCart = Resturant.cart;

        //Scaffold UI

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          "Are you sure you want to clrar the cart?"),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),

                        //yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Resturant.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              //list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text("Cart is Empty..")))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  //get induvidual cart item
                                  final cartItem = userCart[index];
                                  //return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),
              //button to pay

              MyButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    )),
                text: "Go to Checkout",
              )
            ],
          ),
        );
      },
    );
  }
}
