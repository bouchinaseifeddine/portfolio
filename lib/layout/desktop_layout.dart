import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/main_content.dart';
import 'package:portfolio/widgets/side_bar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: SideBar(),
            ),
            SizedBox(width: SizeConfig.defaultSize! * 1.5),
            const Expanded(
              flex: 3,
              child: MainContent(),
            ),
          ],
        ),
      ),
    );
  }
}
