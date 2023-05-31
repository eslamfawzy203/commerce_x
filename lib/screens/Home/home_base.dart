import 'package:commerce_x/screens/Home/category_1.dart';
import 'package:commerce_x/screens/Home/home_screen.dart';
import 'package:commerce_x/screens/Home/profile.dart';
import 'package:commerce_x/screens/Home/search.dart';
import 'package:commerce_x/screens/Home/wish_list.dart';
import 'package:flutter/material.dart';

List<Widget> list =  [
  const HomeScreen(),
  const Category1(),
  const Search(),
  const WishList(),
  const Profile()
];

class HomeBase extends StatefulWidget {
  const HomeBase({super.key});

  @override
  State<HomeBase> createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {
  int selectedScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'WishList'),
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user), label: 'Profile'),
          ],
          currentIndex: selectedScreen,
          onTap: (value) => setState(() {
              selectedScreen =   value ;
              })),
    );
  }
}
