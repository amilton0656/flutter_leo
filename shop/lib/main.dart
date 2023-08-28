import 'package:flutter/material.dart';
import 'package:shop/models/auth.dart';
import 'package:shop/models/order_list.dart';
import 'package:shop/pages/auth_page.dart';
import 'package:shop/pages/order_page.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/product_form_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/pages/products_page.dart';
import 'package:shop/providers/product_list_provider.dart';
import 'package:shop/utils/app_routes.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';
import 'pages/cart_page.dart';

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
        ChangeNotifierProvider(
          create: (_) => OrderList(),
        ),
         ChangeNotifierProvider(
          create: (_) => Auth(),
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
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              foregroundColor: Colors.white,
            ),
          ),
          useMaterial3: true,
        ),
        // home: ProductsOverviewPage(),
        routes: {
          AppRoutes.AUTH: (ctx) => AuthPage(),
          AppRoutes.HOME: (ctx) => ProductsOverviewPage(),
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
          AppRoutes.CART: (ctx) => CartPage(),
          AppRoutes.ORDERS: (ctx) => OrderPage(),
          AppRoutes.PRODUCTS: (ctx) => ProductsPage(),
          AppRoutes.PRODUCT_FORM: (ctx) => ProductFormPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
