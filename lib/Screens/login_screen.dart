import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return SafeArea(
      child: Stack(
//        fit: StackFit.loose,
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  )),
            ],
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 50.0,
                        ),
                        backgroundColor: Colors.white,
                        radius: 50,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Card(
                        elevation: 5.0,
                        margin: EdgeInsets.only(right: 20.0, left: 20.0),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'SIGN IN',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 30.0),
                              ),
                              Theme(
                                data: ThemeData(
                                    primaryColor: Colors.black,
                                    primaryColorDark: Colors.black),
                                child: TextField(
                                  decoration:
                                      InputDecoration(labelText: 'Email'),
                                  controller: emailController,
                                ),
                              ),
                              Theme(
                                data: ThemeData(
                                  primaryColor: Colors.red,
                                  primaryColorDark: Colors.green,
                                ),
                                child: TextField(
                                  decoration:
                                      InputDecoration(labelText: 'Password'),
                                  controller: passwordController,
                                ),
                              ),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
//                                    side: BorderSide(color: Colors.red)
                                ),
                                onPressed: () {},
                                child: Text(
                                  'SUBMIT',
                                ),
                              ),
                              Text('New user? Sign Up',
                                  style: TextStyle(color: Colors.blue),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
