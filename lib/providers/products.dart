import 'package:flutter/material.dart';
import 'package:projeto_shop/data/dummy_data.dart';
import 'package:projeto_shop/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;

  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
