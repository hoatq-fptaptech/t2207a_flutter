
import 'package:flutter/material.dart';

import '../model/cart_item.dart';

class CartBloc extends ChangeNotifier{
    List<CartItem> _cartItems = [];

    Stream<List<CartItem>> get cartItemsStream => Stream.value(_cartItems);

    void addToCart(CartItem item){
      _cartItems.add(item);
      notifyListeners();
      print(_cartItems.length);
    }
}