import 'package:daniheltest/core/domain/product.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  List<Product> _favourites = [];

  List<Product> get favourites => _favourites;

  set favourites(Product product) {
    _favourites.add(product);
    notifyListeners();
  }

  void updateFavourite(Product product) {
    if (favourites.contains(product)) {
      _favourites.remove(product);
      notifyListeners();
    } else {
      favourites = product;
    }
  }
}
