import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_time/view/login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/logo.png"),
          SizedBox(
            height: 150,
          ),
        ],
      ),
    ));
  }
}
