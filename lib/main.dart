import 'package:flutter/material.dart';
import 'package:layout_desiginig/pages/category_page/categories_page.dart';
import 'package:layout_desiginig/pages/product_details/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailsPage(),
    );
  }
}
