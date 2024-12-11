import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bloodgroupselector(BuildContext context) {
  const bloodGroups = ["A+", "B+", "AB+", "O+", "A-", "B-", "AB-", "O-"];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(
            Icons.bloodtype_outlined,
            color: Colors.grey[600],
            size: 25,
          ),
          const SizedBox(width: 8),
          Text(
            "Blood Group",
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
      const SizedBox(height: 12),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: bloodGroups.map((bg) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 0, 115, 230),
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 115, 230),
                  width: 1.5,
                ),
              ),
              onPressed: () {},
              child: Text(
                bg,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 0, 115, 230),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ],
  );
}
