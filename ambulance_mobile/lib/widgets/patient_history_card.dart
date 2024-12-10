import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientHistoryCard extends StatefulWidget {
  const PatientHistoryCard({
    super.key,
    required this.patientId,
    required this.patientName,
    required this.onTap,
  });

  final String patientId;
  final String patientName;
  final VoidCallback onTap;

  @override
  State<PatientHistoryCard> createState() => _PatientHistoryCardState();
}

class _PatientHistoryCardState extends State<PatientHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color.fromARGB(255, 0, 51, 102),
          width: 1.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 58,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 1.5,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.number,
                      color: Color.fromARGB(255, 0, 51, 102),
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.patientId,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 58,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 1.5,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.person,
                      color: Color.fromARGB(255, 0, 51, 102),
                      size: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.patientName,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 0, 51, 102),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: widget.onTap,
            child: Text(
              "See More Details",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 0, 115, 230),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
