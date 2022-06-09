import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/constants/constants.dart';

import '../../../components/animated_progress_indicator.dart';

class CodingStats extends StatelessWidget {
  const CodingStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Bahasa",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.48,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "PHP",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "Java",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "JavaScript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.55,
          label: "English",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.30,
          label: "Jepang",
        ),
      ],
    );
  }
}
