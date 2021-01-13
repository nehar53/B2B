import 'package:flutter/material.dart';
import 'package:my_shop/models/Cart.dart';
import 'package:my_shop/models/Product.dart';

import 'components/body.dart';

class Proct_screen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Products",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.add_shopping_cart),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.favorite),
            SizedBox(
              width: 20,
            ),
          ],
        )
      ],
    );
  }
}
