

import 'package:daniheltest/core/domain/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  Product _product = Product(
      title: 'Pacer Backpack 20L', price: 59.99, description: 'Our bag features chest and hip straps, a pack away rain cover and convenient multiple pockets including a bottom compartment with a separate opening.', productTags: ['20L Size', 'Solar Orange', '8 Pockets'], isFavourite: false
      );


  Product get product => _product;
  set product(Product newProduct) => _product = newProduct;


  void changeFavourite(Product newProduct) {
    product.isFavourite = !product.isFavourite ;
    product = newProduct.copyWith(isFavourite: !product.isFavourite);
    notifyListeners();
  }
}

