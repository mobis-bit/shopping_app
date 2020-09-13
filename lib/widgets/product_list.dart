import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/Screens/show_product_dialog.dart';
import 'package:shopping_app/models/product_Data.dart';
import 'package:shopping_app/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Consumer<ProductData>(
      builder: (context, productData, child) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
          itemBuilder: (context, index) {
            final product = productData.products[index];
            return ProductCard(
              productName: product.productName,
              isSelected: product.isSelected,
              price: '\$${product.productPrice}',
              productImg: product.productImg,
              selectProductCallBack: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return ShowProductDialog(
                        productImg: product.productImg,
                      );
                    });
//                productData.updateProduct(product);
//                product.isSelected
//                    ? productData.addItemToCart(
//                        product.productName, product.productPrice)
//                    : productData.removeCartItem(product);
              },
            );
          },
          itemCount: productData.productCount,
        );
      },
    );
  }
}

//SliverGridDelegateWithFixedCrossAxisCount(
//crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
