import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Help Section',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Clear Steps For Every Situation",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 32),
              Text(
                'FAQ',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  _buildSection(
                    context,
                    title: 'How do I request emergency assistance?',
                    content:
                        'To request emergency assistance, tap the "Request Help" button on the main screen, select the type of emergency, and confirm your location. Our team will be notified immediately.',
                  ),
                  _buildSection(
                    context,
                    title:
                        'What information do I need to provide when requesting help?',
                    content:
                        'When requesting help, you will need to provide your name, contact information, and a brief description of the emergency. You may also be asked to provide additional details to help our team respond effectively.',
                  ),
                  _buildSection(
                    context,
                    title: "Can I track the ambulance's location?",
                    content:
                        'Yes, you can track the ambulance\'s location in real-time on the main screen. The app will display the ambulance\'s current location, estimated time of arrival, and distance from your location.',
                  ),
                  _buildSection(
                    context,
                    title: 'What if I accidentally request help?',
                    content:
                        'If you accidentally request help, you can cancel the request by tapping the "Cancel" button on the main screen. You will be prompted to confirm the cancellation before the request is closed.',
                  ),
                  _buildSection(
                    context,
                    title: 'How can I contact support?',
                    content:
                        'To contact support, tap the "Contact Us" button on the main screen and select the appropriate option. You can reach out to our team via phone, email, or live chat for assistance with any issues or questions.',
                  ),
                  _buildSection(
                    context,
                    title: 'How can I update my contact information?',
                    content:
                        'To update your contact information, tap the "Profile" button on the main screen and select the "Edit Profile" option. You can then update your name, phone number, email address, and other details as needed.',
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                'Contact Administration',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Are there any issues or questions you'd like to address?",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 0, 51, 102),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              TextFormField(
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  prefixIcon:  Icon(
                    Icons.question_answer,
                    color: Colors.grey[500],
                  ),
                  labelText: "Enter your question or issue",
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.grey[500],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 51, 102),
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 51, 102),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 0, 51, 102),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
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
                  child: Text(
                    "SUBMIT",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context,
      {required String title, required String content}) {
    return Card(
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      color: const Color.fromARGB(255, 102, 153, 204),
      child: ExpansionTile(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        collapsedBackgroundColor: const Color.fromARGB(255, 0, 115, 230),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: const Color.fromARGB(255, 0, 115, 230),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                content,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
