import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sportapp/home.dart';
import 'package:sportapp/second.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
  ///update
}

class _MyAppState extends State<MyApp> {
  int _currentindex = 0;
  final tabs = [
    HomePage(),
    const Center(
      child: SecondPage(),
    ),
    const Center(
      child: Text("there"),
    ),
    const Center(
      child: Text("meeeeeeee"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: tabs[_currentindex],
        bottomNavigationBar: DotNavigationBar(
          margin: const EdgeInsets.only(right: 12, left: 12),
          enablePaddingAnimation: false,
          enableFloatingNavBar: false,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentindex,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          selectedItemColor: Colors.green,
          items: [
            DotNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
            ),
            DotNavigationBarItem(
              icon: const Icon(
                Icons.grid_view,
              ),
            ),

            DotNavigationBarItem(
              icon: const Icon(
                Icons.calendar_today,
              ),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
