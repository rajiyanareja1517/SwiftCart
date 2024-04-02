import 'package:flutter/material.dart';
import 'package:swift_cart/screens/cart_product_data.dart';
import 'package:swift_cart/screens/home_page.dart';
import 'package:swift_cart/screens/product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page': (context) => HomePage(),
        'cart_page': (context) => CartProductData(),
        'product_details': (context) => ProductDetails(),
      },
    );
  }
}
