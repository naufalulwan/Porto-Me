import 'package:flutter/material.dart';

import '/components/animated_counter.dart';
import '/constants/constants.dart';
import '/constants/responsive.dart';

import 'highlight_desc.dart';

class Highlights extends StatelessWidget {
  const Highlights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 9,
                        text: "+",
                      ),
                      label: "Content Pinterest",
                    ),
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 15,
                        text: "+",
                      ),
                      label: "Content Dribble",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "+",
                      ),
                      label: "Project Client",
                    ),
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 7,
                        text: "+",
                      ),
                      label: "Project Github",
                    ),
                  ],
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 9,
                        text: "+",
                      ),
                      label: "Content Pinterest",
                    ),
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 15,
                        text: "+",
                      ),
                      label: "Content Dribble",
                    ),
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "+",
                      ),
                      label: "Project Client",
                    ),
                    HighlightDesc(
                      counter: AnimatedCounter(
                        value: 7,
                        text: "+",
                      ),
                      label: "Project Github",
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
