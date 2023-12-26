import 'package:bag_more/common/app_style.dart';
import 'package:bag_more/features/auth/views/conform_pass.dart';
import 'package:bag_more/features/widgets/middle_text.dart';

import 'package:flutter/material.dart';

class LoginPassword extends StatelessWidget {
  const LoginPassword({super.key});

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
          MiddleText(title: "Enter  your  \n Password"),
          SizedBox(
            height: 30,
          ),
          Text("To continue shopping, first verify it’s you"),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your Password',
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
                  builder: (context) => const ConformPassword(),
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
