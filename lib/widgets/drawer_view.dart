import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
                child: Image.asset(
              'images/product4.png',
              fit: BoxFit.cover,
            )),
            accountEmail: Text('akomaschimajohn@gmail.com'),
            accountName: Text('Akomas Mobis'),
            decoration: BoxDecoration(color: Colors.blue),
            margin: EdgeInsets.only(top: 5.0),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.crop_rotate),
                  title: Text('Refresh'),
                ),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'Update Address',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'MEN',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'WOMEN',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'YOUNG BOYS',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  'YOUNG GIRLS',
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Navigator.pop(context);
//Navigator.push(
//context,
//MaterialPageRoute(
//builder: (context) => Login(),
//),
//);
