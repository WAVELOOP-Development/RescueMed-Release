import 'package:ambulance_mobile/base.dart';
import 'package:ambulance_mobile/screens/patient-data-form/patient_data_form.dart';
import 'package:ambulance_mobile/screens/user-profile/help_screen.dart';
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/org-logo.png',
          height: 150,
        ),
        actions: [
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SizedBox(
            height: screenSize.height - 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning!",
                      style: GoogleFonts.poppins(
                          fontSize: 32,
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
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          fontSize: 32,
                          color: const Color.fromARGB(255, 0, 51, 102),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EmergencyButton(
                          title: 'CARDIAC',
                          icon: Icons.monitor_heart_outlined,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PatientDetailsScreen(),
                              ),
                            );

                            print("cardiact");
                          },
                        ),
                        EmergencyButton(
                          title: 'ACCIDENT',
                          icon: Icons.personal_injury_outlined,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PatientDetailsScreen(),
                              ),
                            );
                            print("accident");
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EmergencyButton(
                          title: 'POISONED',
                          icon: Icons.vaccines_outlined,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PatientDetailsScreen(),
                              ),
                            );
                            print("poisoned");
                          },
                        ),
                        EmergencyButton(
                          title: 'OTHER',
                          icon: Icons.pending_outlined,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PatientDetailsScreen(),
                              ),
                            );
                            print("other");
                          },
                        ),
                      ],
                    ),
                  ],
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HelpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Contact Administartion",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 0, 51, 102),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
