import 'package:flutter/material.dart';
import 'package:portfolio/layout/desktop_layout.dart';
import 'package:portfolio/layout/mobile_layout.dart';
import 'package:portfolio/layout/tablet_layout.dart';
import 'package:portfolio/widgets/adaptive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 243, 248),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
