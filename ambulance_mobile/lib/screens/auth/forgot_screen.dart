import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            height: screenSize.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/Forgot.png",
                    height: screenSize.height * 0.4,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Need help\nwith signing in?",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontSize: screenSize.width * 0.06,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 0, 51, 102),
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Text(
                      "Let’s Get You Back In!",
                      style: GoogleFonts.poppins(
                          fontSize: screenSize.width * 0.04,
                          color: const Color.fromARGB(255, 0, 51, 102),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Contact Number",
                        hintStyle: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 0, 51, 102)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 0, 51, 102)),
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: screenSize.height * 0.02),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 0, 115, 230),
                          padding: EdgeInsets.symmetric(
                              vertical: screenSize.height * 0.02),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "Send Request",
                          style: GoogleFonts.poppins(
                            fontSize: screenSize.width * 0.045,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
