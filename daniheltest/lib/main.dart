import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/page/item_screen.dart';
import 'package:daniheltest/styles/theme.dart';
import 'package:daniheltest/widgets/shared/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {

  dependencySetup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: AppScaffold(child: ItemScreen()),
    );
  }
}
