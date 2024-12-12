import 'package:ambulance_mobile/providers/bottom_navigation_provider.dart';
import 'package:ambulance_mobile/screens/login/login_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
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
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
            useMaterial3: true,
          ),
          home: AnimatedSplashScreen(
            splash: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                'assets/Splash_logo.gif',
                fit: BoxFit.cover,
              ),
            ),
            duration: 2100,
            backgroundColor: Colors.white,
            centered: true,
            splashTransition: SplashTransition.fadeTransition,
            nextScreen: const LoginScreen(),
          )),
    );
  }
}
