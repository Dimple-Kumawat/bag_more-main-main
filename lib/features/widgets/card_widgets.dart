import 'package:bag_more/common/app_style.dart';
//import 'package:bag_more/common/image_resources.dart';
import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  final String title;
  final String image;
  final Function() ontap;
  const CardWidgets(
      {super.key,
      required this.title,
      required this.image,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(
        child: SizedBox(
            width: 350,
            height: 58,
            child: ListTile(
              title: Text(
                title,
                style: AppStyle.CardTitle,
              ),
              leading: Image.asset(image),
            )),
      ),
    );
  }
}
