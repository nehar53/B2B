import 'package:flutter/material.dart';
import 'package:my_shop/routes.dart';
import 'package:my_shop/screens/splash/splash_screen.dart';
import 'package:my_shop/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
