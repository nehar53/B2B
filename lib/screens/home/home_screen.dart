//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_shop/components/coustom_bottom_nav_bar.dart';
import 'package:my_shop/enums.dart';
import 'package:my_shop/screens/cart/cart_screen.dart';
import 'package:my_shop/screens/home/components/icon_btn_with_counter.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title:
          Text("MYSHOP", style: TextStyle(fontSize: 20, color: Colors.white)),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      actions: [
        IconBtnWithCounter(
          svgSrc: "assets/icons/Cart Icon.svg",
          press: () {},
          numOfitem: 3,
        ),
      ],
      backgroundColor: Colors.greenAccent,
    );
  }
}
