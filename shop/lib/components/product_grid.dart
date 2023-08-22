import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../providers/product_list_provider.dart';
import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid(this.showFavoriteOnly, {super.key});

  final bool showFavoriteOnly;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductListProvider>(context);
    final List<Product> loadedProducts = showFavoriteOnly ? provider.favoriteItems : provider.items;
    return GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 7,
        ),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
              value: loadedProducts[index],
              child: ProductItem(),
            ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ));
  }
}
