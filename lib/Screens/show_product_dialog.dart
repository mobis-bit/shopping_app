import 'package:flutter/material.dart';

class ShowProductDialog extends StatelessWidget {
  final String productImg;
  ShowProductDialog({this.productImg});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      scrollable: true,
      content: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              Image.asset(productImg),
              Positioned(
                child: FlatButton(
                  //color: Colors.blue,
                  child: Icon(
                    Icons.add_shopping_cart,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    print('Added to Cart');
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
