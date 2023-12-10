import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:money_game/earnings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Money Game',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: HomePage(),
    );
  }
}

int earnings = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentIndex = 1;

final tabs = [
  const Earning(),
  const Earning(),
  const Earning(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: _currentIndex,
            onTap: (index) {
              _currentIndex = index;
            },
            backgroundColor: Colors.grey,
            items: const [
              Column(
                children: [
                  Icon(Icons.shopping_basket),
                  Text(
                    "Market",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.monetization_on),
                  Text(
                    "Earnings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.person),
                  Text(
                    "Profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ]),
        backgroundColor: Colors.grey[500],
        body: Stack(
          children: [
            tabs[_currentIndex],
          ],
        ));
  }
}
