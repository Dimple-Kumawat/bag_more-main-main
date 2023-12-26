import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle title = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'prata_regular',
    letterSpacing: -1.50,
  );
  // ignore: non_constant_identifier_names
  static TextStyle SubTitle = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'Prata',
    fontWeight: FontWeight.bold,
  );
  static TextStyle CardTitle = const TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontFamily: 'Nexa',
    fontWeight: FontWeight.w700,
    height: 0,
  );
  static ButtonStyle ButtonBlack = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(color: Colors.black, width: 2.0),
      ),
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(vertical: 25, horizontal: 60),
    ),
  );
  static ButtonStyle ButtonWhite = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(color: Colors.black, width: 2.0),
      ),
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(vertical: 25, horizontal: 60),
    ),
  );
}
