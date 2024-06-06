import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/main_content.dart';
import 'package:portfolio/widgets/side_bar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SideBar(),
            SizedBox(height: SizeConfig.defaultSize! * 1.5),
            const MainContent(),
          ],
        ),
      ),
    );
  }
}
