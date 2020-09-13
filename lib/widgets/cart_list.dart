import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product_Data.dart';
import 'package:shopping_app/widgets/cart_list_tile.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductData>(
      builder: (context, productData, child) {
        return ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 5.0,
            );
          },
          shrinkWrap: true,
          itemBuilder: (context, index) {
            //final product = productDataData.tasks[index];
            return CartListTile(
              itemName: productData.cartItems[index].productName,
              itemPrice: productData.cartItems[index].productPrice,
              removeItem: () {
                productData.removeCartItem(productData.cartItems[index]);
                //productData.updateProduct(productData.products[index]);
              },
            );
          },
          itemCount: productData.cartItems.length,
        );
      },
    );
  }
}
