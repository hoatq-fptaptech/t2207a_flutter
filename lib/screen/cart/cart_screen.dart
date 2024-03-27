
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget{
    const CartScreen({super.key});

    @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Text("Cart Screen")
      );
  }
}