import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/pages/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loaded = dummyProducts;
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
        home: ProductsOverviewPage(loaded),
      debugShowCheckedModeBanner: false,
    );
  }
}
