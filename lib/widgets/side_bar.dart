import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/separator.dart';
import 'package:portfolio/widgets/side_info.dart';
import 'package:portfolio/widgets/side_more_info.dart';
import 'package:portfolio/widgets/social_media.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: kborderRaduis20,
        border: kborder,
      ),
      child: Column(
        children: [
          width < 1200
              ? Align(
                  alignment: Alignment.topRight,
                  child: IntrinsicWidth(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 55, 47, 59),
                            Color(0xff202023),
                          ],
                        ),
                      ),
                      child: width < 1200
                          ? width < 800
                              ? AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 300),
                                  child: IconButton(
                                    key: ValueKey<bool>(_isExpanded),
                                    onPressed: _toggleExpand,
                                    icon: Icon(
                                      _isExpanded
                                          ? Icons.keyboard_arrow_up_outlined
                                          : Icons.keyboard_arrow_down_outlined,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                )
                              : AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 300),
                                  child: TextButton(
                                    onPressed: _toggleExpand,
                                    child: Text(
                                      _isExpanded
                                          ? 'Hide Contact'
                                          : 'Show Contact',
                                      style: AppStyles.styleNormal15(context)
                                          .copyWith(fontSize: 12),
                                    ),
                                  ),
                                )
                          : null,
                    ),
                  ),
                )
              : const SizedBox(),
          Padding(
            padding: width < 1200
                ? const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    bottom: 30,
                  )
                : const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    bottom: 30,
                    top: 50,
                  ),
            child: Column(
              children: [
                const SideInfo(),
                AnimatedCrossFade(
                  firstChild: width > 1200
                      ? const Column(
                          children: [
                            Separator(),
                            SocialMedia(),
                            Separator(),
                            SideMoreInfo(),
                          ],
                        )
                      : Container(),
                  secondChild: const Column(
                    children: [
                      Separator(),
                      SocialMedia(),
                      Separator(),
                      SideMoreInfo(),
                    ],
                  ),
                  crossFadeState: _isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
