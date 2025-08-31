import 'package:daniheltest/util/common/barrel.dart';

void main() {

  /// Makes Google FOnts check asset folder for font files
  GoogleFonts.config.allowRuntimeFetching = false;

  /// App Dependency Setup using get_it see: [injection_conttainer.dart]
  dependencySetup();


  /// Lazy Loading is a default feature of the provider class of statemanagement
  /// frameworks [riverpod, provider]
  /// they will only load when the associated build method has been accessed,
  /// in this case duting the app start since it is just one page

  runApp(    
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => ProductCategoryProvider()),
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
