import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  void showConfirmDialog() {
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
                fontSize: 32,
                color: const Color.fromARGB(255, 0, 51, 102),
                fontWeight: FontWeight.w500),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Your request to update the profile has been sent successfully.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 0, 51, 102),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Changes will be updated as soon as possible.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 0, 51, 102),
                  fontWeight: FontWeight.w700,
                ),
              )
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
    return Scaffold(
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
              'assets/org-logo.png',
              height: 150,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenSize.height - 150,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Edit Profile',
                      style: GoogleFonts.poppins(
                          fontSize: 32,
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
                    const SizedBox(height: 32),
                    Stack(
                      children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              child: CircleAvatar(
                                radius: 84,
                                backgroundColor:
                                    const Color.fromARGB(255, 0, 115, 230),
                                child: CircleAvatar(
                                  radius: 78.0,
                                  backgroundImage:
                                      const AssetImage('assets/profilep.png'),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                        onTap: () {},
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.add_a_photo_rounded),
                                          iconSize: 30,
                                          padding: const EdgeInsets.all(10),
                                          color: Colors.white,
                                          style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStateProperty.all<Color>(
                                              const Color.fromARGB(
                                                  255, 0, 115, 230),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      initialValue: "Kasun Geesara Karunanayake",
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                        ),
                        labelText: "User Name",
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            width: 1.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      initialValue: "1234567890",
                      style: const TextStyle(color: Colors.black),
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        prefixIcon: const Icon(
                          Icons.phone_android,
                        ),
                        labelText: "Contact Number",
                        labelStyle: GoogleFonts.poppins(
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            width: 1.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      "Please note: \nTo update your profile details, kindly request the administration for assistance.",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 115, 230),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: showConfirmDialog,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
