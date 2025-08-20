import 'package:flutter/material.dart';
import 'package:product_list/productListScreen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List',
      home: ProductListScreen(),
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
      ),
    );
  }
}
