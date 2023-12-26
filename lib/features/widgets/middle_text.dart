import 'package:flutter/material.dart';

class MiddleText extends StatelessWidget {
  final String title;
  const MiddleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        //   Alignment : Alignment.bottomCenter,
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF1A1A16),
          fontSize: 40,
          fontFamily: 'prata_regular',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
