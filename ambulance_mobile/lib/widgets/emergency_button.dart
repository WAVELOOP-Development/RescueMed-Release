import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyButton extends StatefulWidget {
  const EmergencyButton({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  State<EmergencyButton> createState() => _EmergencyButtonState();
}

class _EmergencyButtonState extends State<EmergencyButton> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.18,
      width: screenSize.width * 0.38,
      decoration: BoxDecoration(
        color:const Color.fromARGB(255, 0, 115, 230),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.image,
          ),
          const SizedBox(height: 10),
          Text(
            widget.title,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}