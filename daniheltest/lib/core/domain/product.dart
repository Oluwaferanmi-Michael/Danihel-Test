import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
// part 'product.g.dart';

@freezed
class Product with _$Product {
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;
  @override
  final List<String> productTags;
  @override
  bool isFavourite;

  Product({
    required this.title,
    required this.price,
    required this.description,
    required this.productTags,
    this.isFavourite = false,
  });
}
