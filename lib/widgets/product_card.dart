import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final bool isSelected;
  final String productName, price, productImg;
  final Function selectProductCallBack;

  ProductCard({
    this.productName,
    this.isSelected,
    this.selectProductCallBack,
    this.price,
    this.productImg,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
              child: GestureDetector(
            onTap: selectProductCallBack,
            child: Image.asset(
              productImg,
            ),
          )),
          Container(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  productName,
                  style: TextStyle(color: Colors.black87),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '*****',
                  style: TextStyle(fontSize: 25.0, color: Colors.yellow),
                ),
                Text(
                  price,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Container(
//color: Color(0xFFffffff),
//margin: EdgeInsets.fromLTRB(2.0, 3.0, 5.0, 0),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//Container(
//child: Material(elevation: 50, child: Image.network(productImg))),
//Text(
//productName,
//style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
//),
//Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: <Widget>[
//Text(
//price,
//style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
//),
//SizedBox(
//width: 5,
//),
//GestureDetector(
//child: Container(
//color: Color(0xFF886988),
//child: isSelected
//? Icon(
//Icons.check,
//color: Colors.black87,
//size: 20.0,
//)
//: Text(
//'BUY',
//style: TextStyle(fontSize: 10.0),
//)),
//onTap: selectProductCallBack,
//),
//],
//)
//],
//),
//);
