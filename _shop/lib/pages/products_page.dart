import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/app_drawer.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/utils/app_routes.dart';

import '../providers/product_list_provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  Future<void> _refreshProducts(BuildContext context) {
    return Provider.of<ProductListProvider>(context, listen: false)
        .loadProduct();
  }

  @override
  Widget build(BuildContext context) {
    final ProductListProvider products = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Geranciar Produtos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PRODUCT_FORM);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      drawer: AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () => _refreshProducts(context),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: products.itemsCount,
              itemBuilder: (ctx, index) => Column(
                    children: [
                      ProductItem(products.items[index]),
                      const Divider(),
                    ],
                  )),
        ),
      ),
    );
  }
}
