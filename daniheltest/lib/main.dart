import 'package:daniheltest/core/providers/filter_providers.dart';
import 'package:daniheltest/core/providers/product_provider.dart';
import 'package:daniheltest/core/providers/user_provider.dart';
import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/page/item_screen.dart';
import 'package:daniheltest/util/styles/theme.dart';
import 'package:daniheltest/widgets/shared/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  dependencySetup();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => SalaryRangeProvider()),
        ChangeNotifierProvider(create: (context) => LevelProvider()),
        ChangeNotifierProvider(
          create: (context) => DeveloperCategoryProvider(),
        ),
      ],
      child: const MainApp(),
    ),
  );
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
