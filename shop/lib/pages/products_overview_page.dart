import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';

import '../data/dummy_data.dart';
import '../models/product.dart';

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage(this.loadedProducts, {super.key});

  final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, index) => ProductItem(product: loadedProducts[index]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 /2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ) 
        ),
    );
  }
}