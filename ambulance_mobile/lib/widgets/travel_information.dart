import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelInformation extends StatefulWidget {
  const TravelInformation({
    super.key,
    required this.time,
    required this.distance,
    required this.traffic,
  });

  final String time;
  final String distance;
  final String traffic;

  @override
  State<TravelInformation> createState() => _TravelInformationState();
}

class _TravelInformationState extends State<TravelInformation> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Travel Information',
          style: GoogleFonts.poppins(
              fontSize: 15,
              color: const Color.fromARGB(255, 0, 51, 102),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: screenSize.height * 0.005,
        ),
        Container(
          height: screenSize.height * 0.05,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Estimated Time: ',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    widget.time,
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: screenSize.height * 0.05,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Distance: ',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    widget.distance,
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: screenSize.height * 0.05,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Traffic Status: ',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    widget.traffic,
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 0, 51, 102),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
