import 'package:flutter/widgets.dart';
import 'package:my_shop/screens/cart/cart_screen.dart';
import 'package:my_shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:my_shop/screens/details/details_screen.dart';

import 'package:my_shop/screens/home/home_screen.dart';

import 'package:my_shop/screens/otp/otp_screen.dart';

import 'package:my_shop/screens/sign_in/sign_in_screen.dart';
import 'package:my_shop/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
