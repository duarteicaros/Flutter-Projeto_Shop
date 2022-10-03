import 'package:flutter/material.dart';
import 'package:projeto_shop/utils/app_routes.dart';
import 'package:projeto_shop/views/product_detail_screen.dart';
import 'package:projeto_shop/views/products_overview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
