import 'package:flutter/material.dart';
import 'package:projeto_shop/models/product.dart';
import 'package:projeto_shop/widgets/product_item.dart';
import '../data/dummy_data.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProduct = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProduct.length,
        itemBuilder: (context, index) => ProductItem(loadedProduct[index]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
