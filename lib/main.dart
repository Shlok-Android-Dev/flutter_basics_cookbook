import 'package:flutter/material.dart';
import 'package:flutter_basics_widget/basic_widget/Container_Column.dart';
import 'package:flutter_basics_widget/basic_widget/Container_Row.dart';
import 'package:flutter_basics_widget/basic_widget/DiceRoll.dart';
import 'package:flutter_basics_widget/basic_widget/Profile_MiCard.dart';
import 'package:flutter_basics_widget/basic_widget/Xylophone.dart';
import 'package:flutter_basics_widget/basic_widget/quizzler/quizzler.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridScreen(),
    );
  }
}

/*class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('2 x 10 Grid of Containers')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          crossAxisSpacing: 10.0, // Space between columns
          mainAxisSpacing: 10.0, // Space between rows
        ),
        itemCount: 30, // 2 x 10 = 20 items
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue, // Container color
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        },
        padding: EdgeInsets.all(10.0), // Padding around the grid
      ),
    );
  }
}*/

class GridScreen extends StatelessWidget {
  // List of colors for the containers
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.pink,
    Colors.cyan,
    Colors.brown,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.deepPurple,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.grey,
    Colors.black45,
  ];

  // List of icons for the containers
  final List<IconData> icons = [
    Icons.home,
    Icons.view_column_rounded,
    Icons.table_rows_rounded,
    Icons.contacts_rounded,
    Icons.games_rounded,
    Icons.indeterminate_check_box_rounded,
    Icons.confirmation_num_rounded,
    Icons.lock,
    Icons.message,
    Icons.school,
    Icons.shopping_cart,
    Icons.alarm,
    Icons.flight,
    Icons.music_note,
    Icons.wifi,
    Icons.book,
    Icons.directions_car,
    Icons.pets,
    Icons.ac_unit,
    Icons.work,
  ];

  // List of prebuilt screens (null if no screen exists for the index)
  final List<Widget?> prebuiltScreens = [
    null, // Screen for index 0
    Container_Column(
        // No screen for index 1
        color: Colors.blue,
        icon: Icons.view_column_rounded,
        index: 1),
    ContainerRow(
        // Screen for index 2
        color: Colors.green,
        icon: Icons.table_rows_rounded,
        index: 2),
    Profile_MiCard(
        // No screen for index 3
        color: Colors.orange,
        icon: Icons.contacts_rounded,
        index: 3),
    // Screen for index 4
    Quizzler(),
    DiceRoll(
        color: Colors.yellow,
        icon: Icons.indeterminate_check_box_rounded,
        index: 5), // Screen for index 5
    null,

    null,
    null,
    null,
    null,
    null, // Add more screens or nulls here
    null,
    null,
    null,
    null,
    null,
    null,
    null,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Grid')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          crossAxisSpacing: 10.0, // Space between columns
          mainAxisSpacing: 10.0, // Space between rows
        ),
        itemCount: colors.length, // Total number of items
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to a prebuilt screen if available, otherwise fallback to DetailScreen
              if (prebuiltScreens[index] != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        prebuiltScreens[index]!, // Open prebuilt screen
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      color: colors[index],
                      icon: icons[index],
                      index: index + 1,
                    ),
                  ),
                );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: colors[index], // Set color from the list
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Icon(
                  icons[index], // Set icon from the list
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        padding: EdgeInsets.all(10.0), // Padding around the grid
      ),
    );
  }
}

// Fallback DetailScreen
class DetailScreen extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int index;

  DetailScreen({required this.color, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen $index')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 100,
              color: color,
            ),
            SizedBox(height: 20),
            Text(
              'You clicked on Item $index',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Example Prebuilt Screens
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(child: Text('Shlok Welcome to Home Screen!')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Screen')),
      body: Center(child: Text('Shlok Welcome to Profile Screen!')),
    );
  }
}

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map Screen')),
      body: Center(child: Text('Shlok Welcome to Map Screen!')),
    );
  }
}
