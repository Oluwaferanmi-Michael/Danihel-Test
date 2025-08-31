import 'package:daniheltest/core/domain/enums/enums.dart';

/// created auto case for enums that are one word to make a proper name
/// extension for each
String _autoCase(Enum enumValue) {
  final word = enumValue.name;

  final uppercaseFirstLetter = word[0].toUpperCase();
  final restOfWord = word.substring(1);

  final casedWord = uppercaseFirstLetter + restOfWord;

  return casedWord;
}

extension ProdEnumToString on ProductCategory {
  get properName => switch (this) {
    ProductCategory.allItems => 'All Items',

    ProductCategory.sleepingBags => 'Sleeping Bags',

    _ => _autoCase(this),
  };
}

extension DevEnumToString on DeveloperCategory {
  get properName => switch (this) {
    DeveloperCategory.iOS => DeveloperCategory.iOS.name,
    DeveloperCategory.uiux => 'UI/UX',
    _ => _autoCase(this),
  };
}

extension LevelEnumToString on Level {
  get properName => _autoCase(this);
}

// ---

extension AssetString on String {
  String get assetPath => 'assets/images/$this';
}
