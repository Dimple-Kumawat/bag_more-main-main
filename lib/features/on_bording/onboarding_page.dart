// import 'package:bag_more/on_bording/on_bording3.dart';
// import 'package:bag_more/splash_screen.dart';
import 'package:bag_more/common/app_style.dart';
import 'package:bag_more/welcome_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  final PageController controller;
  final String titel;

  final String subtitel;
  final String image;

  const OnBoardingPage({
    Key? key,
    required this.titel,
    required this.controller,
    required this.subtitel,
    required this.image,
  }) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final height = MediaQuery.of(context).size.height;

    onskip() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const WelcomePage(),
      ));
    }

    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () => onskip(),
            child: const Text(
              "skip",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 120,
        ),
        Text(
          '@Bag More',
          style: AppStyle.title,
        ),
        const SizedBox(
          height: 40,
        ),
        Image.asset(
          widget.image,
        ),
        const SizedBox(
          height: 40,
        ),
        Text(widget.titel,
            textAlign: TextAlign.center, style: AppStyle.SubTitle),
        Text(
          widget.subtitel,
        ),
      ],
    );
  }
}
