import 'package:ambulance_mobile/screens/user-profile/edit_profile.dart';
import 'package:ambulance_mobile/screens/user-profile/help_screen.dart';
import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void showQRCode(double screenWidth) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: Text(
            'Your Profile QR Code',
            style: GoogleFonts.poppins(
                fontSize: 32,
                color: const Color.fromARGB(255, 0, 51, 102),
                fontWeight: FontWeight.w500),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Scan this QR code if any issues in the profile.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 0, 51, 102),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              Image(
                image: const AssetImage(
                  'assets/testQR.png',
                ),
                width: screenWidth * 0.5,
              ),
            ],
          ),
          actions: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 115, 230),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Done',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        showQRCode(screenSize.width);
                      },
                      icon: const Icon(
                        Icons.qr_code_rounded,
                        size: 56,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Stack(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          child: CircleAvatar(
                            radius: 84,
                            backgroundColor: Color.fromARGB(255, 0, 115, 230),
                            child: CircleAvatar(
                              radius: 78.0,
                              backgroundImage:
                                  AssetImage('assets/profilep.png'),
                            ),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const TextHolder(
                  title: 'User ID',
                  value: 'ABC-123123',
                  width: double.infinity,
                ),
                const SizedBox(height: 8),
                const TextHolder(
                  title: 'Full Name',
                  value: 'Kasun Geesara Karunanyake',
                  width: double.infinity,
                ),
                const SizedBox(height: 8),
                const TextHolder(
                  title: 'Email',
                  value: 'Kasun@Sajana.com',
                  width: double.infinity,
                ),
                const SizedBox(height: 8),
                const TextHolder(
                  title: 'Contact Number',
                  value: '071 123 4567',
                  width: double.infinity,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 60,
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
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 115, 230),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const HelpScreen(),
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
                const SizedBox(height: 64),
                SizedBox(
                  width: double.infinity,
                  height: 60,
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
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "WAVELOOP (pvt) LTD.",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: const Color.fromARGB(255, 0, 51, 102),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
