import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/functions/url_launcher.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/gradient_container.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  const MyTimeLineTile({
    super.key,
    required this.title,
    required this.isFirst,
    required this.isLast,
    required this.isHeader,
    this.date,
    this.text,
    this.link,
  });

  final String title;
  final String? date;
  final String? text;
  final bool isFirst;
  final bool isLast;
  final bool isHeader;
  final String? link;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TimelineTile(
        afterLineStyle: const LineStyle(
          thickness: 0.5,
        ),
        beforeLineStyle: const LineStyle(thickness: 0.5),
        alignment: TimelineAlign.start,
        isFirst: isFirst,
        isLast: isLast,
        indicatorStyle: isHeader
            ? const IndicatorStyle(
                width: 50,
                height: 50,
                // padding: EdgeInsets.symmetric(
                //   horizontal: 8,
                // ),
                indicator: GradientContainer(
                  padding: 16,
                  child: FaIcon(
                    FontAwesomeIcons.bookOpen,
                    color: Color.fromARGB(255, 136, 78, 253),
                    size: 18,
                  ),
                ),
              )
            : IndicatorStyle(
                width: 17,
                height: 17,
                color: kPrimaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                indicator: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kborderColor,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(167, 32, 160, 1),
                          kPrimaryColor,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
        endChild: isHeader
            ? Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  title,
                  style: AppStyles.styleBold24(context),
                ),
              )
            : Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    link != null
                        ? Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    title,
                                    style: AppStyles.styleBold15(context),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () async {
                                      await urlLauncher(Uri.parse(link!));
                                    },
                                    child: Text('Click Here',
                                        textAlign: TextAlign.start,
                                        style: AppStyles.styleBold15(context)
                                            .copyWith(color: kPrimaryColor))),
                              ],
                            ),
                          )
                        : Text(
                            title,
                            style: AppStyles.styleBold15(context),
                          ),
                    SizedBox(height: SizeConfig.defaultSize! / 2),
                    Text(
                      date!,
                      style: AppStyles.styleNormal15(context),
                    ),
                    SizedBox(height: SizeConfig.defaultSize! / 2),
                    Text(
                      text!,
                      style: AppStyles.styleLight15(context),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
