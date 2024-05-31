import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/separator.dart';
import 'package:portfolio/widgets/side_info.dart';
import 'package:portfolio/widgets/social_media.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: kborderRaduis20,
          border: kborder),
      child: Container(
        padding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 50),
        child: const Column(
          children: [
            SideInfo(),
            Separator(),
            SocialMedia(),
            Separator(),
          ],
        ),
      ),
    );
  }
}
