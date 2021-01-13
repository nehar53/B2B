import 'package:flutter/material.dart';
import 'package:my_shop/models/Product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_shop/screens/cart/cart_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class AllProductCard extends StatelessWidget {
  const AllProductCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                // color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Image.asset(
                product.images[0],
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            // SizedBox(height: 0),
            Text.rich(
              TextSpan(
                text: "\$${product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20),
                children: [
                  TextSpan(
                    text: "\ ${product.discount}% OFF",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green[300],
                        fontSize: 14),
                  )
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RatingBarIndicator(
                    rating: product.rating,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20,
                    direction: Axis.horizontal,
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  FlatButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8),
                    splashColor: Colors.redAccent,
                    onPressed: () =>
                        Navigator.pushNamed(context, CartScreen.routeName),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ])
          ],
        )
      ],
    );
  }
}
