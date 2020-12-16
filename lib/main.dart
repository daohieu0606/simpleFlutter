import 'package:first_app/product_manager.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello flutter"),
            ),
            body: ProductManager('Banh mi vietnam')));
  }
}
