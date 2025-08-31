import 'package:daniheltest/core/domain/enums/enums.dart';
import 'package:flutter/material.dart';

class SalaryRangeProvider with ChangeNotifier {
  double salaryValue;

  SalaryRangeProvider({this.salaryValue = 100});

  void changeSalary(double value) {
    salaryValue = value;
    notifyListeners();
  }
}

class LevelProvider with ChangeNotifier {
  Level level;

  LevelProvider({this.level = Level.mid});

  void changeLevel(level) {
    this.level = level;
    notifyListeners();
  }
}

class DeveloperCategoryProvider with ChangeNotifier {
  late List<DeveloperCategory> _categories;

  List<DeveloperCategory> get categories => _categories;

  set categories(DeveloperCategory category) {
    _categories.add(category);
    notifyListeners();
  }

  DeveloperCategoryProvider() : _categories = [
    DeveloperCategory.uiux,
    DeveloperCategory.android,
    DeveloperCategory.iOS,
  ];

  void addCategories(DeveloperCategory devCategory) {
    if (_categories.contains(devCategory)) {
      _categories.remove(devCategory);
      notifyListeners();
    } else {
      // List<DeveloperCategory> list = [devCategory, ...categories!];
      categories = devCategory;
      //  = list;
    }
  }
}
