import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/size_config.dart';

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
            border: kborder),
        child: Stack(
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
                        bottomLeft: Radius.circular(20))),
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
                  tabs: const [
                    Tab(
                      text: 'About',
                    ),
                    Tab(text: 'Resume'),
                    Tab(text: 'Projects'),
                    Tab(text: 'Contact'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taps[tapIndex],
                    style: AppStyles.styleSemiBold32(context),
                  ),
                  SizedBox(height: SizeConfig.defaultSize!),
                  Container(
                    width: 35,
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
                  )
                  // const TabBarView(
                  //   children: [
                  //     AboutTap(),
                  //     ResumeTap(),
                  //     ProjectsTap(),
                  //     ContactTap(),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
