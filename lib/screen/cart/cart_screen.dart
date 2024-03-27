
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2207a_flutter/bloc/cart_bloc.dart';
import 'package:t2207a_flutter/model/cart_item.dart';

class CartScreen extends StatelessWidget{
    const CartScreen({super.key});

    @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:  StreamBuilder<List<CartItem>>(
          stream: Provider.of<CartBloc>(context,listen: false).cartItemsStream,
          builder: (context,snapshot){
             if(!snapshot.hasData){
                return Center(
                  child: Text("Your cart is empty")
                );
             }else{
               final cartItems = snapshot.data!;
               return ListView.builder(
                  itemCount: cartItems.length,
                   itemBuilder: (context,index){
                      return Column(
                        children: [
                          Image.network(cartItems[index].thumbnail),
                          Text(cartItems[index].title)
                        ],
                      );
                   }
               );
             }
          },
        )
        );
  }
}