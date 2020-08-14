import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_time/view/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
                margin: EdgeInsets.fromLTRB(50, 25, 50, 25),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 35, 20, 15),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/logo.png"),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Platform.isAndroid
                                  ? androidLogin(size: size)
                                  : iosLogin(size: size),
                            ],
                          ))
                    ],
                  ),
                )),
          ],
        ),
      )),
    );
  }
}

class androidLogin extends StatelessWidget {
  const androidLogin({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: Controller().username,
          decoration: InputDecoration(labelText: "E-mail"),
        ),
        TextField(
          controller: Controller().password,
          decoration: InputDecoration(labelText: "Senha"),
          obscureText: true,
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          width: size.width,
          child: RaisedButton(
            child: Text(
              'Entrar',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}

class iosLogin extends StatelessWidget {
  const iosLogin({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CupertinoTextField(
          placeholder: "E-mail",
        ),
        SizedBox(
          height: 10,
        ),
        CupertinoTextField(
          placeholder: "Senha",
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: size.width,
          child: CupertinoButton.filled(
            padding: EdgeInsets.all(0),
            child: Text("Entrar"),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ),
      ],
    );
  }
}

class Controller {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
}
