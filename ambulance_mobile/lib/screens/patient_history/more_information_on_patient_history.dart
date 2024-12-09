import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:ambulance_mobile/widgets/travel_information.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreInformationOnPatientHistory extends StatefulWidget {
  const MoreInformationOnPatientHistory({super.key});

  @override
  State<MoreInformationOnPatientHistory> createState() =>
      _MoreInformationOnPatientHistoryState();
}

class _MoreInformationOnPatientHistoryState
    extends State<MoreInformationOnPatientHistory> {
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
              'assets/logo(full).png',
              height: 28,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'More Information',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "P123-123 Patient Record",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              const TextHolder(
                title: 'Patient Name',
                value: 'Ganguli Dissanayake',
                width: double.infinity,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHolder(
                    title: 'Age',
                    value: '22 yrs',
                    width: screenSize.width * 0.4,
                  ),
                  TextHolder(
                    title: 'Gender',
                    value: 'Female',
                    width: screenSize.width * 0.4,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextHolder(
                title: 'Patient Category',
                value: 'Cardiac',
                width: double.infinity,
              ),
              const SizedBox(
                height: 15,
              ),
              const TextHolder(
                title: 'Date',
                value: '2024-09-04',
                width: double.infinity,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextHolder(
                    title: 'Pickup Time',
                    value: '10:30 AM',
                    width: screenSize.width * 0.4,
                  ),
                  TextHolder(
                    title: 'Drop Time',
                    value: '11:00 AM',
                    width: screenSize.width * 0.4,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const TextHolder(
                title: 'Pickup Address',
                value: 'No. 123, Galle Road, Colombo 03',
                width: double.infinity,
              ),
              const SizedBox(
                height: 15,
              ),
              const TextHolder(
                title: 'Selected Hospital',
                value: 'Asiri Hospital',
                width: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
              const TravelInformation(
                time: '25 minutes',
                distance: '5.2 km',
                traffic: 'Heavy',
              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
