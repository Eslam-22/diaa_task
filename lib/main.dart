import 'package:flutter/material.dart';
import 'clientsite.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : ClientSite(),
    );
  }
}


