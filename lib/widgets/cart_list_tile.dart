import 'package:flutter/material.dart';

class CartListTile extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final Function removeItem;
  CartListTile({this.itemName, this.itemPrice, this.removeItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          itemName,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
        ),
        //SizedBox(width: 5.0),
        Text(
          '$itemPrice',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: removeItem,
          child: Icon(
            Icons.close,
            color: Colors.red,
            size: 30.0,
          ),
        ),
      ],
    );
  }
}
