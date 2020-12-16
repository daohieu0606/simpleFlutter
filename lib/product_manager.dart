import 'package:first_app/products.dart';
import 'package:flutter/material.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> products = ['Food tester'];

  @override
  void initState() {
    products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RaisedButton(
              onPressed: () {
                setState(() {
                  products.add('Advanced food tester');
                });
              },
              child: Text('Add')),
          margin: EdgeInsets.all(10.0),
        ),
        Products(products)
      ],
    );
  }
}
