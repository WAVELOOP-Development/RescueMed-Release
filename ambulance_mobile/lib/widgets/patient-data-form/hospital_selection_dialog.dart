import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:ambulance_mobile/widgets/travel_information.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ambulance_mobile/screens/patient-data-form/record_summery.dart';
import 'package:ambulance_mobile/widgets/patient-data-form/change_hospital_dialog.dart';

class HospitalSelectionDialog extends StatelessWidget {
  const HospitalSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      title: SizedBox(
        width: screenSize.width * 0.7,
        child: Text(
          'Select Hospital',
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
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 0, 115, 230),
                  ),
                ),
              ),
              onPressed: () {
                showChangeHospitalDialog(context, screenSize.width);
              },
              child: Text(
                "Change Hospital",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 0, 115, 230),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          const TravelInformation(
            time: '25 min',
            distance: '5.2 km',
            traffic: 'Heavy',
          ),
          const SizedBox(height: 64),
          const TextHolder(
            title: 'Pickup Address',
            value: 'No. 123,Galle Road,Colombo.',
            width: double.infinity,
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const RecordSummery(),
                ),
              );
            },
            child: Text(
              "Submit",
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
  }
}
