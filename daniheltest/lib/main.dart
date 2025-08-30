import 'package:daniheltest/page/item_screen.dart';
import 'package:daniheltest/widgets/shared/app_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AppScaffold(child: ItemScreen()));
  }
}
