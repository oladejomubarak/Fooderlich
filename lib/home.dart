import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue)
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Fooderlich',
              // 2
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge),
      centerTitle: true,),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          // 5
            selectedItemColor:
            Theme.of(context).textSelectionTheme.selectionColor,
            // 6
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.car_crash),
                  label: 'Card'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.cake),
                  label: 'Card2'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard),
                  label: 'Card3'),
            ]
        )
    );
  }
}