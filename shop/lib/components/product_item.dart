import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem( {super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: SizedBox(
          height: 40,
          child: GridTileBar(
            backgroundColor: Colors.black54,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            title: Text(product.title,
            textAlign: TextAlign.center,),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
        ),
        child: Image.network(product.imageUrl,
          fit: BoxFit.cover,
        ),
        ),
    );
  }
}
