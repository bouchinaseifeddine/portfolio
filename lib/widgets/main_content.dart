import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/about_tap.dart';
import 'package:portfolio/widgets/contact_tap.dart';
import 'package:portfolio/widgets/projects_tap.dart';
import 'package:portfolio/widgets/resume_tap.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  int tapIndex = 0;

  List<String> taps = ['About', 'Resume', 'Projects', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tapIndex,
      length: 4,
      child: Container(
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: kborderRaduis20,
          border: kborder,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  color: kLightBackgroundColor,
                  border: kborder,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
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
                  labelPadding: EdgeInsets.zero,
                  labelStyle: AppStyles.styleNormal15(context),
                  tabs: taps.map((label) => Tab(text: label)).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tapIndex == 0 ? 'About Me' : taps[tapIndex],
                    style: AppStyles.styleSemiBold32(context),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: SizeConfig.defaultSize!),
                  Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: kborderRaduis32,
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          kPrimaryColor,
                          kPrimaryColor,
                          Color.fromRGBO(167, 32, 160, 1),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.defaultSize!),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: getTapWidget(tapIndex),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTapWidget(int index) {
    switch (index) {
      case 0:
        return const AboutTap(key: ValueKey<int>(0));
      case 1:
        return const ResumeTap(key: ValueKey<int>(1));
      case 2:
        return const ProjectsTap(key: ValueKey<int>(2));
      case 3:
        return const ContactTap(key: ValueKey<int>(3));
      default:
        return const AboutTap(key: ValueKey<int>(0));
    }
  }
}
