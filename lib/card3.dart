import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO 5: add dark overlay BoxDecoration
        child: Container(
        constraints: const BoxConstraints.expand(width: 350,height: 450),
    decoration: const BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/mag2.png'),
    fit: BoxFit.cover),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    child: Stack(
    children: [

    // TODO 6: Add Container, Column, Icon and Text
    Container(
    // 3
    padding: const EdgeInsets.all(16),
          // 4
          child: Column(
            // 5
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 6
              const Icon(Icons.book, color: Colors.white, size: 40),
              const SizedBox(height: 8),
              // 8
              Text(
                  'Recipe Trends',
                  style: FooderlichTheme.darkTextTheme.headline2),
              // 9
              const SizedBox(height: 30),
            ],
          ),
    ),
              // 7
    // TODO 7: Add Center widget with Chip widget children

      Center(
        // 11
        child: Wrap(
          // 12
          alignment: WrapAlignment.start,
          // 13
          spacing: 12,
          // 14
          children: [
            Chip(
              label: Text('Healthy',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor: Colors.black.withOpacity(0.7),
              onDeleted: () {
                print('delete');
              },
            ),
            Chip(
              label: Text('Vegan',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
              onDeleted: () {
                print('delete');
              },
            ),
            Chip(
              label: Text('Carrots',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Apple',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Mango',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Orange',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Banana',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Beans',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Potato',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Strawberry',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
            Chip(
              label: Text('Cocoa',
                  style: FooderlichTheme.darkTextTheme.bodyLarge),
              backgroundColor:Colors.black.withOpacity(0.7),
            ),
          ],
        ),
      ),
    ],
    ),
    ),
    );
  }
}