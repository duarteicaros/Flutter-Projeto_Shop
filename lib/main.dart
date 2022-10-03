// @dart=2.9
/*essa parte de cima é colocada para evitar m problema de Error: Cannot run with sound null safety, because the following dependenciesdon't support null safety:*/
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:projeto_shop/utils/app_routes.dart';
import 'package:projeto_shop/views/product_detail_screen.dart';
import 'package:projeto_shop/views/products_overview_screen.dart';
import 'package:projeto_shop/providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Products(),
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.purple,
                secondary: Colors.deepOrange,
              ),
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (context) => const ProductDetailScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
      ),
      body: const Center(
        child: Text('Vamos desenvolver uma loja?'),
      ),
    );
  }
}
