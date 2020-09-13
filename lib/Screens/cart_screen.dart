import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/cart_list.dart';
//import 'package:shopping_app/Screens/men_fashion_screen.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: CartList(),
          ),
          Divider(
            thickness: 10.0,
            color: Colors.black87,
          ),
          Expanded(
            flex: 1,
            child: Text('The Total Sum appears here'),
          ),
        ],
      ),
    );
  }
}
