import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Onboarding Screen 2',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/pexels-pixabay-268533.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
