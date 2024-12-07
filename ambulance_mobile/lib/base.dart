import 'package:ambulance_mobile/providers/bottom_navigation_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
   @override
     Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<BottomNavigationProvider>().currentScreen,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.grey,
            activeColor: const Color.fromARGB(255, 255, 255, 255),
            tabBackgroundColor: const Color.fromARGB(255, 0, 115, 230),
            padding: const EdgeInsets.all(12),
            gap: 8,
            tabs: const [
              GButton(
                icon: CupertinoIcons.house_alt,
                iconSize: 30,
                text: 'Home',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Colors.white,
                  fontFamily: 'SF Pro',
                ),
              ),
              GButton(
                icon: Icons.history,
                iconSize: 30,
                text: 'History',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Colors.white,
                  fontFamily: 'SF Pro',
                ),
              ),
              GButton(
                icon: CupertinoIcons.person,
                iconSize: 30,
                text: 'Profile',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Colors.white,
                  fontFamily: 'SF Pro',
                ),
              ),
            ],
            onTabChange: (index) {
              context.read<BottomNavigationProvider>().updateIndex(index);
            },
          ),
        ),
      ),
    );
  }
}