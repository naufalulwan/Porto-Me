import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/constants/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            const Spacer(),
            Text(
              "Naufal Ulwan",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Bisa dianggap sebagai Mobile Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
