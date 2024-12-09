import 'package:ambulance_mobile/screens/patient_history/more_information_on_patient_history.dart';
import 'package:ambulance_mobile/widgets/patient_history_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Patient History',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Past patient records",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: screenSize.height * 0.04,
              ),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Patient name or ID',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 51, 102),
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 51, 102),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 51, 102),
                        width: 2.0,
                      ),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                      color: Color.fromARGB(255, 0, 51, 102),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.04,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return PatientHistoryCard(
                      patientId: 'patientId',
                      patientName: 'patientName',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MoreInformationOnPatientHistory(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
