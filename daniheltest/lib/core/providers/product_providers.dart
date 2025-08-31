

import 'package:daniheltest/core/domain/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  late Product _product;

  Product get product => _product;
  set product(Product newProduct) => _product = newProduct;

  ProductProvider() : _product = Product(
        title: 'Pacer Backpack 20L',
        price: 59.99,
        description:
            'Our bag features chest and hip straps, a pack away rain cover and convenient multiple pockets including a bottom compartment with a separate opening.',
        productTags: ['20L Size', 'Solar Orange', '8 Pockets'],
      );

}

class ProductCategoryProvider with ChangeNotifier {
  int _indexSelected = 0;

  int get indexSelected => _indexSelected;

  set indexSelected(int index) {
    _indexSelected = index;
    notifyListeners();
  }
}
