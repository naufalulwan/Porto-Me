import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/components/animated_progress_indicator.dart';
import 'package:portofolio_website_flutter/constants/constants.dart';

class SkillStats extends StatelessWidget {
  const SkillStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Kemampuan",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.68,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.54,
                label: "Android Studio",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.35,
                label: "Firebase",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.45,
                label: "MySql",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.44,
                label: "Blender",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.75,
                label: "Visual Studio Code",
              ),
            ),
          ],
        )
      ],
    );
  }
}
