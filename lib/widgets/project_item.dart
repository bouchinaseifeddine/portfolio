import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/functions/url_launcher.dart';
import 'package:portfolio/utils/size_config.dart';

class ProjectItem extends StatefulWidget {
  final Project project;

  const ProjectItem({required this.project, super.key});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (widget.project.link != '') {
          await urlLauncher(Uri.parse(widget.project.link));
        }
      },
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  borderRadius: kborderRaduis12,
                ),
                child: ClipRRect(
                  borderRadius: kborderRaduis12,
                  child: AnimatedScale(
                    duration: const Duration(milliseconds: 200),
                    scale: isHovered ? 1.15 : 1.0,
                    child: AnimatedOpacity(
                      opacity: isHovered ? 0.6 : 1.0,
                      duration: const Duration(milliseconds: 200),
                      child: AspectRatio(
                        aspectRatio: (1 / .5),
                        child: Image.asset(
                          widget.project.image,
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              widget.project.link == ''
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: isHovered ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 150),
                          child: GestureDetector(
                            onTap: () async {
                              if (widget.project.link == '') {
                                await urlLauncher(Uri.parse(
                                    widget.project.playStoreUrl ?? ''));
                              }
                            },
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: kborderRaduis12,
                                color: kBackgroundColor,
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Center(
                                child: Transform.scale(
                                  scale: isHovered ? 1.0 : 0.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: SvgPicture.asset(
                                      'assets/images/playstore.svg',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize! * 2,
                        ),
                        AnimatedOpacity(
                          opacity: isHovered ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 150),
                          child: GestureDetector(
                            onTap: () async {
                              if (widget.project.link == '') {
                                await urlLauncher(Uri.parse(
                                    widget.project.appStoreUrl ?? ''));
                              }
                            },
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: kborderRaduis12,
                                color: kBackgroundColor,
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Center(
                                child: Transform.scale(
                                  scale: isHovered ? 1.0 : 0.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: SvgPicture.asset(
                                      'assets/images/appstore.svg',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                  // const Icon(
                                  //   Icons.store,
                                  //   color: Color.fromARGB(255, 136, 78, 253),
                                  // ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : AnimatedOpacity(
                      opacity: isHovered ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 150),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: kborderRaduis12,
                          color: kBackgroundColor,
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Center(
                          child: Transform.scale(
                            scale: isHovered ? 1.0 : 0.0,
                            child: const Icon(
                              Icons.visibility,
                              color: Color.fromARGB(255, 136, 78, 253),
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
          SizedBox(height: SizeConfig.defaultSize),
          Text(
            widget.project.name,
            style: AppStyles.styleSemiBold32(context).copyWith(fontSize: 18),
          ),
          Text(
            widget.project.description,
            style: AppStyles.styleLight15(context),
            maxLines: 3,
            overflow: TextOverflow.clip,
          ),
        ],
      ),
    );
  }
}
