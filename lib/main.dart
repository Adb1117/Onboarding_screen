import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

void main() {
  runApp(OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
  }
}
