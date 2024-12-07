import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';

import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/mobile_main_content.dart';
import 'package:portfolio/widgets/side_bar.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int tapIndex = 0;

  List<String> taps = ['About', 'Resume', 'Projects', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tapIndex,
      length: 4,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SideBar(),
                  SizedBox(height: SizeConfig.defaultSize! * 1.5),
                  MobileMainContent(
                    tapIndex: tapIndex,
                    taps: taps,
                  ),
                  const SizedBox(
                      height: kBottomNavigationBarHeight), // Add spacing here
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: kLightBackgroundColor,
                border: kborder,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: TabBar(
                indicator: const BoxDecoration(
                  border: null,
                ),
                onTap: (value) {
                  setState(() {
                    tapIndex = value;
                  });
                },
                dividerColor: Colors.transparent,
                unselectedLabelColor: Colors.white,
                indicatorPadding: EdgeInsets.zero,
                automaticIndicatorColorAdjustment: false,
                labelPadding: const EdgeInsets.symmetric(vertical: 5),
                labelStyle:
                    AppStyles.styleNormal15(context).copyWith(fontSize: 12),
                tabs: taps.map((label) => Tab(text: label)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
