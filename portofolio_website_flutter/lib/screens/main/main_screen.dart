import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../constants/responsive.dart';

import '../main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: Responsive.isDesktop(context) ? null : SideMenu(),
      body: Padding(
        padding: const EdgeInsets.only(right: defaultPadding),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                        // our footer
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
