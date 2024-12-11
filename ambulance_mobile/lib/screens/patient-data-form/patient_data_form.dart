import 'package:ambulance_mobile/screens/patient-data-form/record_summery.dart';
import 'package:ambulance_mobile/widgets/blood_group_selector.dart';
import 'package:ambulance_mobile/widgets/gender_selector.dart';
import 'package:ambulance_mobile/widgets/patient-data-form/alert_dialog_select_hospital.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientDetailsScreen extends StatefulWidget {
  const PatientDetailsScreen({super.key});

  @override
  State<PatientDetailsScreen> createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Patient Details',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  color: const Color.fromARGB(255, 0, 51, 102),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline),
                        hintText: "Patient Name",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.calendar_today_outlined,
                          size: 20,
                        ),
                        hintText: "Age",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: bloodgroupselector(context),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: gendeselector(context),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.description_outlined,
                          color: Colors.grey[600],
                        ),
                        suffixIcon: IconButton(
                          icon: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 115, 230),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Icon(Icons.mic, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        hintText: "Description",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.grey[600],
                        ),
                        suffixIcon: IconButton(
                          icon: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 115, 230),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Icon(Icons.add, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        hintText: "Add Emergency Image",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 45),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side:  const BorderSide(
                              color: Color.fromARGB(255, 0, 51, 102),
                              width: 2,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.qr_code_scanner_sharp,
                              color: Color.fromARGB(255, 0, 51, 102),
                              size: 25,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Scan NIC or Driving License",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 0, 51, 102),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 0, 115, 230),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          //Select Hospital - Dialog box
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                title: Text(
                                  'Select Hospital',
                                  style: GoogleFonts.poppins(
                                      fontSize: 32,
                                      color:
                                          const Color.fromARGB(255, 0, 51, 102),
                                      fontWeight: FontWeight.w500),
                                ),
                                content: const AlertDialogSelectHospital(),
                                actions: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 60,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 0, 115, 230),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (ctx) =>
                                                const RecordSummery(),
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
                            },
                          );
                        },
                        child: Text(
                          "Next",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                     const SizedBox(height: 16),
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
