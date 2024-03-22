import 'package:flutter/material.dart';
import 'package:fooderlich/screens/recipes_screen.dart';
import 'components/card1.dart';
import 'components/card2.dart';
import 'components/card3.dart';
import 'models/explore_recipe.dart';
import 'screens/explore_screen.dart';
import 'screens/grocery_screen.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    // TODO: Replace with RecipesScreen
    RecipesScreen(),
    const GroceryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex;
    // 1
    return Consumer<TabManager>(builder: (context, tabManager,
        child) {
      selectedIndex = tabManager.selectedTab;
      return Scaffold(
        appBar: AppBar(
          title: Text('Fooderlich',
              style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,),
        // 2
        //body: pages[selectedIndex],
        body: IndexedStack(index: selectedIndex, children:
        pages),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context)
              .textSelectionTheme.selectionColor,
          // 3
          currentIndex: selectedIndex,
          onTap: (index) {
            // 4
            tabManager.goToTab(index);
          },
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.explore), label: 'Explore',),
            const BottomNavigationBarItem(
              icon: Icon(Icons.book), label: 'Recipes',),
            const BottomNavigationBarItem(
              icon: Icon(Icons.list), label: 'To Buy',),
          ],),);
    },);

  }
}
