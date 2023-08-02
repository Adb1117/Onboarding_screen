import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'OnboardingScreen1.dart';
import 'OnboardingScreen2.dart';
import 'OnboardingScreen3.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _screens = [
    OnboardingScreen1(),
    OnboardingScreen2(),
    OnboardingScreen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _screens.length,
            itemBuilder: (BuildContext context, int index) {
              return _screens[index];
            },
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
            bottom: 50.0,
            left: 0.0,
            right: 0.0,
            child: DotsIndicator(
              dotsCount: _screens.length,
              position: _currentIndex.toDouble(),
              decorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_currentIndex < _screens.length - 1) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          } else {
            // Handle onboarding completion
          }
        },
        child: Icon(
          _currentIndex < _screens.length - 1
              ? Icons.arrow_forward
              : Icons.done,
        ),
      ),
    );
  }
}
