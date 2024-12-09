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
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Patient History',
                      style: GoogleFonts.poppins(
                          fontSize: 32,
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
                    SizedBox(height: screenSize.height * 0.04),
                  ],
                ),
              ),
            ),
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              backgroundColor: Colors.white,
              expandedHeight: 80,
              flexibleSpace: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Patient Name or ID",
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    fillColor: Colors.white,
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
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16),
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
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
                  childCount: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
