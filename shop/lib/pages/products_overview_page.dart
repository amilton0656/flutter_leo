import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/badgee.dart';
import 'package:shop/providers/product_list_provider.dart';

import '../components/product_grid.dart';

enum FilterOptions {
  Favorite,
  All,
}

class ProductsOverviewPage extends StatefulWidget {
  const ProductsOverviewPage({super.key});

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: double.infinity,
          child: Text(
            'Minha Loja',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Somente Favoritos'),
                value: FilterOptions.Favorite,
              ),
              const PopupMenuItem(
                child: Text('Todos'),
                value: FilterOptions.All,
              )
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorite) {
                  _showFavoriteOnly = true;
                } else {
                  _showFavoriteOnly = false;
                }
              });
            },
          ),
          Badgee(
            value: '2',
            color: Colors.black,
            child: IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.shopping_cart),
              ),
          )
        ],
      ),
      body: ProductGrid(_showFavoriteOnly),
    );
  }
}
