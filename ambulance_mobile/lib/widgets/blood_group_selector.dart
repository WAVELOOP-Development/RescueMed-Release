import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bloodgroupselector(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;

  const bloodGroups = ["A+", "B+", "AB+", "O+", "A-", "B-", "AB-", "O-"];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          const Icon(Icons.bloodtype, color: Colors.black),
          const SizedBox(width: 8),
          Text(
            "Blood Group",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
      const SizedBox(height: 12),
      Wrap(
        spacing: 12,
        runSpacing: 12,
        children: bloodGroups.map((bg) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 115, 230),
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenWidth * 0.03,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 115, 230),
                width: 1.5,
              ),
            ),
            onPressed: () { },
            child: Text(
              bg,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 0, 115, 230),
              ),
            ),
          );
        }).toList(),
      ),
    ],
  );
}