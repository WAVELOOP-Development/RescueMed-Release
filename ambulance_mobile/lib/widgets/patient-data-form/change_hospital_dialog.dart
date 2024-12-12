import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showChangeHospitalDialog(BuildContext context, double screenWidth) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        title: SizedBox(
          width: screenWidth * 0.7,
          child: Text(
            'Change Hospital',
            style: GoogleFonts.poppins(
              fontSize: 32,
              color: const Color.fromARGB(255, 0, 51, 102),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextHolder(
              title: 'Selected Hospital',
              value: 'Asiri Hospital',
              width: double.infinity,
            ),
            const SizedBox(height: 84),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Available Hospitals (Nearby)',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 115, 230),
                      width: 1.5,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Asiri Hospital',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 0, 115, 230),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
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
                Navigator.of(context).pop();
              },
              child: Text(
                "Change Hospital",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
