import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/constants/constants.dart';

class KnowledgeStats extends StatelessWidget {
  const KnowledgeStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Kelebihan",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        knowledgeText("Apa aja dilakoni "),
        knowledgeText("Pokoknya banyak dah "),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Kekurangan",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        knowledgeText("Lagi mencoba menutupi "),
      ],
    );
  }

  Widget knowledgeText(text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: primaryColor,
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
