import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:my_shop/models/Product.dart';
import 'package:my_shop/screens/Products_cat/components/All_product.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
      child: ListView.builder(
        itemCount: demoProducts.length,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              alignment: Alignment.center,
              // margin: EdgeInsets.all(5),
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: AllProductCard(product: demoProducts[index]),
            )
            //
            ),
      ),
    );
  }
}
