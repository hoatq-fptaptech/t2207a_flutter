
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2207a_flutter/bloc/cart_bloc.dart';
import 'package:t2207a_flutter/model/cart_item.dart';
import 'package:t2207a_flutter/model/product_list.dart';

class PopularItem extends StatelessWidget{
    final Product product;
    const PopularItem({required this.product});

    @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFAFAFA),
        margin: const EdgeInsets.all(10),
        child: Column(
            children: [
                Image.network(
                    product.thumbnail ?? "" , // product!=null?product.thumbnail:""
                  width: 150,
                  height: 120,
                ),
                Text(product.title??""),
              FloatingActionButton(
                child: Icon(Icons.add_shopping_cart),
                onPressed: (){
                    CartItem newItem = CartItem(
                        id: product.id??0,
                        title: product.title??"",
                        thumbnail: product.thumbnail??"",
                        price: product.price??0,
                        buyQty: 1
                    );
                    final cartBloc = Provider.of<CartBloc>(context,listen: false);
                    cartBloc.addToCart(newItem);
                },
              )
            ],
        ),
    );
  }
}