import 'package:ambulance_mobile/providers/bottom_navigation_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class Base extends StatefulWidget {
  const Base({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Base.scaffoldKey,
      body: context.watch<BottomNavigationProvider>().currentScreen,
      endDrawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hourglass_empty_rounded,
                        size: 48,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "You're All Set!",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                        color: Color.fromARGB(255, 0, 51, 102),
                      ),
                      Text(
                        "Notifications",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            color: const Color.fromARGB(255, 0, 51, 102),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.grey,
            activeColor: const Color.fromARGB(255, 255, 255, 255),
            tabBackgroundColor: const Color.fromARGB(255, 0, 115, 230),
            padding: const EdgeInsets.all(12),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home_work_outlined,
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
                icon: Icons.person_2_outlined,
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
