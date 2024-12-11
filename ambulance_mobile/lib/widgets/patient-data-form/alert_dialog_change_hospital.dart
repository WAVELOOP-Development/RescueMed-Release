import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Change Hospital button - content of the AlertDialog
class AlertDialogChangeHospital extends StatefulWidget {
  const AlertDialogChangeHospital({super.key});

  @override
  State<AlertDialogChangeHospital> createState() =>
      _AlertDialogChangeHospitalState();
}

class _AlertDialogChangeHospitalState extends State<AlertDialogChangeHospital> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            const SizedBox(height: 8),
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
            const SizedBox(height: 8),
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
            const SizedBox(height: 8),
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
        const SizedBox(
          height: 74,
        )
      ],
    );
  }
}
