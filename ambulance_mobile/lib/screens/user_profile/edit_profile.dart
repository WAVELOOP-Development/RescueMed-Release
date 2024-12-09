import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: 30,
                  color: const Color.fromARGB(255, 0, 115, 230),
                ),
                Image.asset(
                  'assets/logo(full).png',
                  height: 28,
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Edit Profile',
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Request admin for make any changes",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                    Stack(
                    children: [
                      SizedBox(
                      height: screenSize.height * 0.2,
                      child: Center(
                        child: Image.asset(
                        'assets/profilep.png',
                        
                        ),
                      ),
                      ),
                      Positioned(
                      top: screenSize.height * 0.144,
                      right: screenSize.width * 0.14,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 115, 230),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                        CupertinoIcons.photo_camera_solid,
                        color: Colors.white,
                        size: 30,
                        ),
                      ),
                      ),
                    ],
                    ),
                  SizedBox(
                    height: screenSize.height * 0.04,
                  ),
                  const TextHolder(
                    title: 'User Name',
                    value: 'Kasun Geesara Karunanyake',
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
                  Text(
                    "Please note: To update your profile details, kindly request the administration for assistance.",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: SizedBox(
            height: screenSize.height * 0.065,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 115, 230),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        title: Text(
                          'Request Success',
                          style: GoogleFonts.poppins(
                              fontSize: 30,
                              color: const Color.fromARGB(255, 0, 51, 102),
                              fontWeight: FontWeight.w500),
                        ),
                        content: Text(
                          'Your request to update the profile has been sent successfully, Changes will be updated as soon as possible.',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 51, 102),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        actions: [
                          SizedBox(
                            width: double.infinity,
                            height: screenSize.height * 0.06,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 115, 230),
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
                },
                child: Text(
                  "Request Changes",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
