import 'package:flutter/material.dart';
import '../screens/index_page.dart';
import '../screens/cart.dart';
import '../screens/product_list.dart';
import '../screens/single_product.dart';
import '../screens/user.dart';

import '../screens/splash_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/splash': (context) => SplashPage(),
  '/index': (context) => IndexPage(),
  '/productList': (context) => ProductListScreen(),
  '/cart': (context) => CartScreen(),
  '/profile': (context) => UserScreen(),
  '/singalProduct': (context) => SingleProductScreen(),
};
