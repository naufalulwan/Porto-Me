import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/constants/constants.dart';

class HighlightDesc extends StatelessWidget {
  const HighlightDesc({Key? key, required this.counter, this.label})
      : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(label!, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}
