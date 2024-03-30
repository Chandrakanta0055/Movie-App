import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_movies/screens/HomeScreen.dart';
import 'package:my_movies/screens/SearchScreen.dart';
import 'package:my_movies/screens/more_Screen.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(length: 3,
        child: Scaffold(
      bottomNavigationBar:  Container(
        color: Colors.black87,
        height: 70,
        child: TabBar(tabs: [
          Tab(icon: Icon(Icons.home),
          text: "Home",),
          Tab(icon: Icon(Icons.search),
            text: "Search",),
          Tab(icon: Icon(Icons.photo_library_outlined),
            text: "New & Hot",),

        ],
        indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor: Color(0xff999999),

        ),

      ),
          body:  TabBarView(
            children: [
              HomeScreen(),
              SearchScreen(),
              more_Screen(),
            ],
          ),

    ));
  }
}
