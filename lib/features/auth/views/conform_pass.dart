import 'package:bag_more/common/app_style.dart';
import 'package:bag_more/features/auth/views/re_password.dart';
import 'package:bag_more/features/widgets/middle_text.dart';
//import 'package:bag_more/welcome_screen.dart';
import 'package:flutter/material.dart';

class ConformPassword extends StatelessWidget {
  const ConformPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const Column(children: [
          SizedBox(
            height: 50,
          ),
          MiddleText(title: "Conform your  \n password "),
          SizedBox(
            height: 30,
          ),
          Text(
              "Use 8 or more characters with a mix of letters, \n numbers & symbols"),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Password',
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ]),
        floatingActionButton: SizedBox(
          width: width * 0.9,
          child: ElevatedButton(
            style: AppStyle.ButtonWhite,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SingUpRePassword(),
                ),
              );
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("CONTINUE"),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ));
  }
}
