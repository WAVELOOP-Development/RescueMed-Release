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
          height: 30,
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Color.fromARGB(255, 0, 51, 102),
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_active_outlined,
                    size: 50,
                    color: Colors.grey[400],
                  ),
                  Text(
                    "You're All Set!",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
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
              //Emergency Buttons
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
                            onTap: () {}),
                        EmergencyButton(
                            title: 'ACCIDENT',
                            image: 'assets/accident.png',
                            onTap: () {}),
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
