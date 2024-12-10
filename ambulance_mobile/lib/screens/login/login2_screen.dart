import 'package:ambulance_mobile/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            height: screenSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/login2.png',
                  height: screenSize.height * 0.4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verify Your Identity.",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 0, 51, 102),
                      ),
                    ),
                    Text(
                      "Provide the five-digit service ID number for verification.",
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.04,
                    ),
                    // OTP Field
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                      5,
                      (index) {
                        return SizedBox(
                        width: screenSize.width * 0.15,
                        height: screenSize.height * 0.068,
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          ),
                          focusNode: FocusNode(
                          onKey: (node, event) {
                            if (event.isKeyPressed(LogicalKeyboardKey.backspace) && index > 0) {
                            FocusScope.of(context).previousFocus();
                            }
                            return KeyEventResult.ignored;
                          },
                          ),
                          onChanged: (value) {
                          if (value.isNotEmpty && index < 4) {
                            FocusScope.of(context).nextFocus();
                          }
                          },
                          decoration: InputDecoration(
                          counterText: "",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 51, 102),
                            width: 2,
                            ),
                          ),
                          ),
                        ),
                        );
                      },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have the code?",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 0, 51, 102),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.04,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: screenSize.height * 0.065,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Base(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 0, 115, 230),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
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
