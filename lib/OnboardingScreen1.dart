import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Onboarding Screen 1',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/istockphoto-517188688-612x612.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
