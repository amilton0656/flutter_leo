import 'package:flutter/material.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/providers/product_list_provider.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductListProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: const ColorScheme.light().copyWith(
            primary: Colors.blue[900],
            secondary: Colors.orange,
            tertiary: Colors.grey,
          ),
          appBarTheme: Theme.of(context).appBarTheme.copyWith(
            backgroundColor: Colors.blue[900],
            foregroundColor: Colors.white,
          ),
          useMaterial3: true,
        ),
          home: ProductsOverviewPage(),
          routes: {
             AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage()
            // AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage()
          },
          debugShowCheckedModeBanner: false,
      ),
    );
  }
}
