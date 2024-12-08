import 'package:ambulance_mobile/providers/bottom_navigation_provider.dart';
import 'package:ambulance_mobile/screens/login2_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavigationProvider()),
      ],
      child: MaterialApp(
        title: 'RescueMed',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home: const Login2Screen(),
      ),
    );
  }
}
