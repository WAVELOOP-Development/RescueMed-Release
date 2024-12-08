import 'package:ambulance_mobile/base.dart';
import 'package:ambulance_mobile/widgets/emergency_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo(full).png',
          height: 28,
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Color.fromARGB(255, 0, 51, 102),
              ),
              onPressed: () {
                Base.scaffoldKey.currentState?.openEndDrawer();
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning!",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Kasun",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: screenSize.height * 0.06,
              ),
              Text(
                "Hey, Welcome Back!",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "What's Going On?",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: screenSize.height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EmergencyButton(
                          title: 'CARDIAC',
                          image: 'assets/cardiac.png',
                          onTap: () {
                            print("cardiact");
                          },
                        ),
                        EmergencyButton(
                            title: 'ACCIDENT',
                            image: 'assets/accident.png',
                            onTap: () {
                              print("accident");
                            }),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EmergencyButton(
                            title: 'POISON',
                            image: 'assets/poison.png',
                            onTap: () {}),
                        EmergencyButton(
                            title: 'OTHER',
                            image: 'assets/other.png',
                            onTap: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.055,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Need any help?",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 0, 51, 102),
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Contact Administartion",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 51, 102),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
