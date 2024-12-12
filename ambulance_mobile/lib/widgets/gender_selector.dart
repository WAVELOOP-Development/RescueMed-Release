import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({Key? key}) : super(key: key);

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  bool isMaleSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.wc_rounded,
              color: Colors.grey[600],
              size: 25,
            ),
            const SizedBox(width: 8),
            Text(
              "Gender",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      isMaleSelected = true;
                    });
                    print("Male");
                  },
                  icon: Icon(
                    Icons.man,
                    color: isMaleSelected
                        ? Colors.white
                        : const Color.fromARGB(255, 0, 115, 230),
                    size: 30,
                  ),
                  label: Text(
                    "MALE",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isMaleSelected
                          ? Colors.white
                          : const Color.fromARGB(255, 0, 115, 230),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isMaleSelected
                        ? const Color.fromARGB(255, 0, 115, 230)
                        : Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 115, 230),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      isMaleSelected = false;
                    });
                    print("Female");
                  },
                  icon: Icon(
                    Icons.woman,
                    color: !isMaleSelected
                        ? Colors.white
                        : const Color.fromARGB(255, 0, 115, 230),
                    size: 30,
                  ),
                  label: Text(
                    "FEMALE",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: !isMaleSelected
                          ? Colors.white
                          : const Color.fromARGB(255, 0, 115, 230),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: !isMaleSelected
                        ? const Color.fromARGB(255, 0, 115, 230)
                        : Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 0, 115, 230),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
