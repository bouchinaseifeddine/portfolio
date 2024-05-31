import 'package:flutter/material.dart';
import 'package:portfolio/layout/desktop_layout.dart';
import 'package:portfolio/layout/mobile_layout.dart';
import 'package:portfolio/layout/tablet_layout.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/adaptive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kScaffoldColor,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
