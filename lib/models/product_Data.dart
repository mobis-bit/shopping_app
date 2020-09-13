import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:shopping_app/models/product.dart';

class ProductData extends ChangeNotifier {
  List<Product> _products = [
    Product(
        productName: 'Yellow Vintage Shirt',
        productPrice: 18.99,
        productImg: 'images/product1.png'),
    Product(
        productName: 'Multi-Color Vintage',
        productPrice: 18.99,
        productImg: 'images/product2.png'),
    Product(
        productName: 'Beautiful Vintage Shirt',
        productPrice: 18.99,
        productImg: 'images/product3.png'),
    Product(
        productName: 'Beautiful Vintage Shirt',
        productPrice: 18.99,
        productImg: 'images/product4.png'),
    Product(
        productName: 'Yellow Vintage Shirt',
        productPrice: 18.99,
        productImg: 'images/product1.png'),
    Product(
        productName: 'Multi-Color Vintage',
        productPrice: 18.99,
        productImg: 'images/product2.png'),
    Product(
        productName: 'Multi-Color Vintage',
        productPrice: 18.99,
        productImg: 'images/product3.png'),
    Product(
        productName: 'Multi-Color Vintage',
        productPrice: 18.99,
        productImg: 'images/product4.png'),
  ];
  final List<Product> cartItems = [];

  UnmodifiableListView<Product> get products {
    return UnmodifiableListView(_products);
  }

  int get productCount {
    return _products.length;
  }

//  void addNewTask(String newProduct) {
//    final product = Product(productName: newProduct);
//    _products.add(product);
//    notifyListeners();
//  }
  void addItemToCart(String newCartItemName, double newCartItemPrice) {
    final product =
        Product(productName: newCartItemName, productPrice: newCartItemPrice);
    cartItems.add(product);
    notifyListeners();
  }

  void updateProduct(Product product) {
    product.toggleDone();
    notifyListeners();
  }

  void removeCartItem(Product product) {
    cartItems.remove(product);
    notifyListeners();
  }

//  void checkOffTask(Product product) {
//    _products.remove(product);
//    notifyListeners();
//  }
}
