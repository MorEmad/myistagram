import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'profile.dart';
import 'instagram.dart';
import 'explower_page.dart';
import 'like_page.dart';


class MyBottomNavegatorBar extends StatefulWidget {
  const MyBottomNavegatorBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavegatorBar> createState() => _MyBottomNavegatorBarState();
}

class _MyBottomNavegatorBarState extends State<MyBottomNavegatorBar> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }
  int _selectedIndex=0;
  List<Widget>MyPages=[
    Instagram.HomeInatagramPage(),
    ExplowerPage(),
    LikePage(),
    Profilee(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        onTap: _onItemTapped,
      ),);


  }
}


