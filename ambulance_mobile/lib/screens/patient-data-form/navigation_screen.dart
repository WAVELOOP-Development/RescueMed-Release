import 'package:ambulance_mobile/widgets/text_holder.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextHolder(
              title: 'Selected Hospital',
              value: 'Asiri Hospital',
              width: double.infinity,
            ),
            const SizedBox(
              height: 32,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: screenSize.height - 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Colors.grey.shade500,
                      width: 1.5,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/map.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 115, 230),
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 115, 230),
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_searching_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
