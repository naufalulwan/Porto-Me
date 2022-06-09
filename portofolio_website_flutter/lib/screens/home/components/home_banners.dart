import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/constants/no_progress.dart';

import '../../../constants/constants.dart';
import '../../../constants/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.65)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "print \"Hello World\" \nthis is my first code!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      NoProgress().noProgress(context);
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      "JAJAL SEKARANG",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text("I build "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        Responsive.isMobile(context)
            ? TyperAnimatedText(
                "a very legendary word in all aspects.",
                speed: const Duration(milliseconds: 60),
              )
            : TyperAnimatedText(
                "a very legendary word",
                speed: const Duration(milliseconds: 60),
              ),
        TyperAnimatedText(
          "complete e-Commerce website.",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "great variety of apps.",
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "Projects",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
