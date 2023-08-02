import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Onboarding Screen 3',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/tree-736885_1280.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
