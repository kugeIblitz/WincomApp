import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/color_utils.dart';
import 'about.dart';
import 'blog.dart';
import 'favorites.dart';
import 'home_screen.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const blog(),
    const FavoriteScreen(),
    const About(),
  ];
  @override
  Widget build(BuildContext context) => 
  
  Stack(
    children: [
       Container(
            child:Lottie.asset('assets/back.json',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity)),
      Scaffold(
        backgroundColor: Colors.transparent,
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              showUnselectedLabels: false,
              iconSize: 30,
              elevation: 0,
              selectedFontSize: 20,
              unselectedFontSize: 14,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white70,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.comment_outlined),
                  label: 'Blog',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.info_outline),
                  label: 'About',
                ),
              ],
            ),
          ),
    ],
  );
  Color _getNavBarColor(int index) {
    switch (index) {
      case 0:
        return hexStringToColor("21E1E1");
      case 1:
        return hexStringToColor("D9ACF5");
      case 2:
        return hexStringToColor("FD8A8A");
        
      case 3:
        return hexStringToColor("21E1E1");
    
      default:
        return hexStringToColor("21E1E1");
    }
  }
}
