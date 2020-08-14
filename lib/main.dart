import 'package:flutter/material.dart';
import 'package:tv_time/view/splash.dart';

void main() => runApp(new MaterialApp(
      title: "TV Time",
      home: Splash(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow),
    ));
