import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/screens/home/components/highlights.dart';

import '../main/main_screen.dart';
import 'components/home_banners.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        Highlights(),
        SizedBox(
          height: 30,
        ),
        MyProjects(),
        SizedBox(
          height: 15,
        ),
        Recommendations(),
      ],
    );
  }
}
