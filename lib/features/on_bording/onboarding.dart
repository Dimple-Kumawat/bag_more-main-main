import 'package:bag_more/common/image_resources.dart';
import 'package:bag_more/features/on_bording/onboarding_page.dart';

import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 244, 244),
      body: PageView(
        controller: _pageController,
        children: [
          OnBoardingPage(
            controller: _pageController,
            titel: "heelo",
            subtitel:
                "Help us deliver your products to \n         the right place for you ",
            image: ImageResources.img2,
          ),
          OnBoardingPage(
            controller: _pageController,
            titel: "heelo",
            subtitel:
                "Help us deliver your products to \n         the right place for you ",
            image: ImageResources.img3,
          ),
          OnBoardingPage(
            controller: _pageController,
            titel: "heelo",
            subtitel:
                "Help us deliver your products to \n         the right place for you ",
            image: ImageResources.img4,
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(20)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(0), // Set to 0 for a box shape
            ),
          ),
        ),
        child: const Text(
          'ACCEPT',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),

        // style: ButtonStyle,
        onPressed: () => _pageController.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.easeIn),
      ),
    );
  }
}
