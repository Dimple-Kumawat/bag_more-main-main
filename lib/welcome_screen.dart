import 'package:bag_more/common/image_resources.dart';
import 'package:bag_more/features/auth/views/sign_up_enter_email_view.dart';
import 'package:bag_more/features/widgets/card_widgets.dart';
import 'package:bag_more/features/widgets/middle_text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500.0,
            child: Center(
              child: Column(
                children: [
                  const MiddleText(title: 'Welcome,\nBag More'),
                  const SizedBox(height: 50),
                  CardWidgets(
                    title: '   Continue with Apple',
                    image: ImageResources.apple,
                    ontap: () {},
                  ),
                  const SizedBox(height: 10),
                  CardWidgets(
                    title: '   Continue with Google',
                    image: ImageResources.google,
                    ontap: () {},
                  ),
                  const SizedBox(height: 10),
                  CardWidgets(
                    title: '   Continue with Facebook',
                    image: ImageResources.facebook,
                    ontap: () {},
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 10,
                          thickness: 3,
                          indent: 20,
                          endIndent: 10,
                          color: Color.fromARGB(255, 171, 166, 166),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 20,
                          thickness: 3,
                          indent: 10,
                          endIndent: 15,
                          color: Color.fromARGB(255, 171, 166, 166),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CardWidgets(
                    title: '   Continue with Email',
                    image: ImageResources.mail,
                    ontap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpEntereMailView(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
