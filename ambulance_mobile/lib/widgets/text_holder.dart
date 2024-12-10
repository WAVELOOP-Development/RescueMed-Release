import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHolder extends StatefulWidget {
  const TextHolder({
    super.key,
    required this.title,
    required this.value,
    required this.width,
  });

  final String title;
  final String value;
  final double width;
  @override
  State<TextHolder> createState() => _TextHolderState();
}

class _TextHolderState extends State<TextHolder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: GoogleFonts.poppins(
              fontSize: 15,
              color: const Color.fromARGB(255, 0, 51, 102),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 56,
          width: widget.width,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.value,
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
      ],
    );
  }
}
