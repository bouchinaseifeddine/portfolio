import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/about_tap.dart';
import 'package:portfolio/widgets/contact_tap.dart';
import 'package:portfolio/widgets/projects_tap.dart';
import 'package:portfolio/widgets/resume_tap.dart';

class MobileMainContent extends StatefulWidget {
  const MobileMainContent(
      {super.key, required this.tapIndex, required this.taps});

  final int tapIndex;
  final List<String> taps;

  @override
  State<MobileMainContent> createState() => _MobileMainContentState();
}

class _MobileMainContentState extends State<MobileMainContent> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: kborderRaduis20,
        border: kborder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.tapIndex == 0 ? 'About Me' : widget.taps[widget.tapIndex],
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
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: getTapWidget(widget.tapIndex),
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
