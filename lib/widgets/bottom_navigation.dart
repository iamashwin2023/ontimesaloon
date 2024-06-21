

import 'package:flutter/material.dart';
import 'package:salon/features/booking_page.dart';
import 'package:salon/features/home_page.dart';
import 'package:salon/features/location_page.dart';
import 'package:salon/features/message_page.dart';
import 'package:salon/features/profile_page.dart';
import 'package:salon/utils/colors.dart';




class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
 
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const LocationPage(),
    const BookingPage(),
    const MessagePage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 22,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        elevation: 5,
       selectedFontSize: 12,
       unselectedFontSize: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.appbackgroundColor,
        unselectedItemColor: const Color.fromARGB(255, 127, 116, 248),
        
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 26),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on , size: 26),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded , size: 26),
            
            label: 'Appointing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded , size: 26),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle , size: 26),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
