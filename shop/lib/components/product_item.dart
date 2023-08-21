import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem( {super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(product.imageUrl,
        fit: BoxFit.cover,
      ),
      );
  }
}
