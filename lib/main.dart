import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: Create theme
    final theme = FooderlichTheme.dark();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      theme: theme,
      // TODO: Add theme
      title: 'Fooderlich',

      home: MultiProvider(
        providers: [
          // 2
          ChangeNotifierProvider(create: (context) => TabManager(),),
          // TODO 10: Add GroceryManager Provider
          ChangeNotifierProvider(create: (context) => GroceryManager(),),
        ],
        child: const Home(),),
      // 4
      //home: const Home(),
    );
  }
}
