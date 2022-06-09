import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portofolio_website_flutter/components/animated_progress_indicator.dart';

import '../constants/constants.dart';
import 'home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = const TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String _versionName = 'Made with ❤️';
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 400,
                        child: splashScreenLoadingProgress(),
                      )
                    ],
                  )),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Spacer(),
                            Text(_versionName),
                            const Spacer(
                              flex: 4,
                            ),
                            const Text('0p.png'),
                            const Spacer(),
                          ])
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget splashScreenLoadingProgress() {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(seconds: splashDelay),
          builder: (context, double value, _) {
            return Column(
              children: [
                Text("${(value * 100).toInt()}%"),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                LinearPercentIndicator(
                  percent: value,
                  animation: true,
                  progressColor: primaryColor,
                  animateFromLastPercent: true,
                  animationDuration: splashDelay,
                  backgroundColor: darkColor,
                )
              ],
            );
          }),
    );
  }
}
