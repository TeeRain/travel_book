import 'package:travel_book/screens/home_screen.dart';
import 'package:travel_book/screens/profile_screen.dart';
import 'package:travel_book/screens/search_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../screens/ticket_screen.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:_widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap:_onItemTapped ,
          elevation: 10,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor:const Color(0xFF526480),
          type: BottomNavigationBarType.fixed, //Stop the icons from shifting
          items: const [
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label:"Home"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),  label:"Search"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),  label:"Tickets"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label:"Profile"),
          ],
        )
    );
  }
}
