// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:salon/pages_usermanagement/signup_page.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/onboarding_items.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

 int _currentPage = 0;
  final int _totalPages = 3;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  

  void _onButtonPressed() {
    if (_currentPage == _totalPages - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignUpPage()),
      );
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.appbackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipPath(
                clipper: SinCosineWaveClipper(),
                // borderRadius: const BorderRadius.vertical(bottom: Radius.elliptical(340, 180)),

                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(
                            onboardintItems[_currentPage].imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 270,
                  child: Column(
                    children: [
                      Flexible(
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: onboardintItems.length,
                          itemBuilder: (context, index) {
                            final items = onboardintItems[index];
                            return Column(
                              children: [
                                Text(
                                  items.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Text(
                                  items.subtitle,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            );
                          },
                          onPageChanged: (value) {
                            setState(() {
                              _currentPage = value;
                            });
                          },
                        ),
                      ),
                      // dot indicator
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int index = 0;
                              index < onboardintItems.length;
                              index++)
                            dotIndicator(isSelected: index == _currentPage),
                        ],
                      ),
                      const SizedBox(height: 50),
                      FloatingActionButton(
                        onPressed:_onButtonPressed,
                        elevation: 0,
                        backgroundColor: AppColors.appbackgroundColor,
                        child: const Icon(Icons.arrow_forward_ios,
                            color: Colors.white),
                      ),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget dotIndicator({required bool isSelected}) {
  return Padding(
    padding: const EdgeInsets.only(right: 7),
    child: AnimatedContainer(
      duration: const Duration(microseconds: 500),
      height: isSelected ? 8 : 6,
      width: isSelected ? 8 : 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.white : Colors.white24,
      ),
    ),
  );
}