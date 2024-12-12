import 'package:ambulance_mobile/screens/patient-data-form/navigation_screen.dart';
import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:ambulance_mobile/widgets/travel_information.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordSummery extends StatefulWidget {
  const RecordSummery({super.key});

  @override
  State<RecordSummery> createState() => _RecordSummeryState();
}

class _RecordSummeryState extends State<RecordSummery> {
  bool _showCriticalAlert = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 30,
              color: const Color.fromARGB(255, 0, 115, 230),
            ),
            Image.asset(
              'assets/org-logo.png',
              height: 150,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Record Summery',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Patient information successfully sent to the hospital.",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 32,
              ),
              if (_showCriticalAlert)
                Column(
                  children: [
                    AnimatedGradientBorder(
                      borderSize: 3,
                      glowSize: 1,
                      gradientColors: const [
                        Colors.red,
                        Color.fromARGB(255, 244, 178, 173),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(0)),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                        ),
                        child: Center(
                          child: Text(
                            "Critical State Activated!",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "The hospital has been received your critical alert",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              const TextHolder(
                title: 'Patient Name',
                value: 'Ganguli Dissanayake',
                width: double.infinity,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHolder(
                    title: 'Age',
                    value: '21 yrs',
                    width: screenSize.width * 0.42,
                  ),
                  TextHolder(
                    title: 'Gender',
                    value: 'Female',
                    width: screenSize.width * 0.42,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHolder(
                    title: 'Blood Groop',
                    value: 'A-',
                    width: screenSize.width * 0.42,
                  ),
                  TextHolder(
                    title: 'Patient Category',
                    value: 'Cardiac',
                    width: screenSize.width * 0.42,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const TextHolder(
                title: 'Pickup Address',
                value: 'No. 123, Galle Road, Colombo.',
                width: double.infinity,
              ),
              const SizedBox(
                height: 8,
              ),
              const TextHolder(
                title: 'Selected Hospital',
                value: 'Asiri Hospital',
                width: double.infinity,
              ),
              const SizedBox(height: 32),
              GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationScreen(),
                    ),
                  );
                },
                child: Container(
                  width: screenSize.width,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/map.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: Text(
                  "(Double tap for navigation)",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 0, 51, 102),
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 32),
              const TravelInformation(
                time: '25 minutes',
                distance: '5 km',
                traffic: 'Heavy',
              ),
              const SizedBox(height: 64),
              Text(
                'Emergency Section',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Inform the hospital if patient in \na critical situation",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                _showCriticalAlert
                    ? "Is everything on track?"
                    : "Is there any critical situation?",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: _showCriticalAlert
                          ? const BorderSide(
                              color: Color.fromARGB(255, 0, 115, 230),
                            )
                          : const BorderSide(
                              color: Colors.red,
                            ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _showCriticalAlert = !_showCriticalAlert;
                    });
                  },
                  child: Text(
                    _showCriticalAlert
                        ? "Deactivate Critical State"
                        : "Send Critical Alert",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: _showCriticalAlert
                          ? const Color.fromARGB(255, 0, 115, 230)
                          : Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
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
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone_forwarded,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Contact Hospital Staff",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
