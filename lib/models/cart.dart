import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'NB 550s',
        price: '119.99',
        imagePath: 'lib/images/1.jpg',
        description: 'Unisex Lifestyle'),
    Shoe(
        name: 'NB 574 core',
        price: '89.99',
        imagePath: 'lib/images/2.jpg',
        description: 'Mens Lifestyle'),
    Shoe(
        name: 'NB 993 core',
        price: '224.00',
        imagePath: 'lib/images/3.jpg',
        description: 'Mens Lifestyle'),
    Shoe(
        name: 'NB 928v3',
        price: '154.99',
        imagePath: 'lib/images/4.jpg',
        description: 'Mens Walking'),
    Shoe(
        name: 'NB 574',
        price: '84.99',
        imagePath: 'lib/images/5.jpg',
        description: 'Unisex Lifestyle'),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
