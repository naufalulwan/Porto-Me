import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/no_progress.dart';
import '/constants/constants.dart';
import 'language_stats.dart';
import '/screens/main/components/knowledge_stats.dart';

import './area_info_text.dart';
import './my_info.dart';
import './skill_stats.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            controller: controller,
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const AreaInfoText(
                  title: "Penduduk",
                  text: "Indonesia",
                ),
                const AreaInfoText(
                  title: "Provinsi",
                  text: "Jawa Barat",
                ),
                const AreaInfoText(
                  title: "Umur",
                  text: "21",
                ),
                const SkillStats(),
                const SizedBox(height: defaultPadding),
                const CodingStats(),
                const KnowledgeStats(),
                const Divider(),
                const SizedBox(height: defaultPadding / 2),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(primaryColor),
                  ),
                  onPressed: () {
                    NoProgress().noProgress(context);
                  },
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "DOWNLOAD CV",
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                        const SizedBox(width: defaultPadding / 2),
                        SvgPicture.asset("assets/icons/download.svg"),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: defaultPadding),
                  color: secondaryColor,
                  child: Row(
                    children: [
                      const Spacer(),
                      IconButton(
                        splashRadius: 30,
                        splashColor: primaryColor,
                        onPressed: () {
                          NoProgress().noProgress(context);
                        },
                        icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                      ),
                      IconButton(
                        splashRadius: 30,
                        splashColor: primaryColor,
                        onPressed: () {
                          NoProgress().noProgress(context);
                        },
                        icon: SvgPicture.asset("assets/icons/github.svg"),
                      ),
                      IconButton(
                        splashRadius: 30,
                        splashColor: primaryColor,
                        onPressed: () {
                          NoProgress().noProgress(context);
                        },
                        icon: SvgPicture.asset("assets/icons/twitter.svg"),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
