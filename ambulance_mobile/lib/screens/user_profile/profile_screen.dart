import 'package:ambulance_mobile/screens/user_profile/edit_profile.dart';
import 'package:ambulance_mobile/screens/user_profile/help_screen.dart';
import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Profile',
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Stay Sharp, Kasun!",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.04,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/profilep.png',
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.04,
                  ),
                  const TextHolder(
                    title: 'User ID',
                    value: 'ABC-123123',
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const TextHolder(
                    title: 'Full Name',
                    value: 'Kasun Geesara Karunanyake',
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const TextHolder(
                    title: 'Email',
                    value: 'Kasun@Sajana.com',
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const TextHolder(
                    title: 'Contact Number',
                    value: '071 123 4567',
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screenSize.height * 0.065,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 115, 230),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfile(),
                          ),
                        );
                      },
                      child: Text(
                        "Edit Profile",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screenSize.height * 0.065,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 115, 230),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HelpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Help",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.06,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screenSize.height * 0.065,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 0, 115, 230),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Logout",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 0, 115, 230),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.07,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "RescueMed © 2024",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 51, 102),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "info@contact.rescuemed.com",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 51, 102),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "powered by",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 0, 51, 102),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "WaveLoop pvt ltd.",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 0, 51, 102),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
