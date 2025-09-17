import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/functions/url_launcher.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/gradient_container.dart';

class SideMoreInfo extends StatelessWidget {
  const SideMoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GradientContainer(
              padding: 8,
              child: FaIcon(
                FontAwesomeIcons.envelope,
                color: kIconsColor,
                size: 18,
              ),
            ),
            SizedBox(width: SizeConfig.defaultSize!),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('EMAIL',
                      style: AppStyles.styleNormal15(context).copyWith(
                          color: kLightGrayColor.withOpacity(0.7),
                          fontSize: 8)),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: InkWell(
                      onTap: () async {
                        await urlLauncher(
                            Uri.parse('mailto:bouchinaseifeddine@gmail.com'));
                      },
                      child: Text(
                        'bouchinaseifeddine@gmail.com',
                        maxLines: 1,
                        style: AppStyles.styleLight15(context).copyWith(
                          color: Colors.white,
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: SizeConfig.defaultSize! * 1.5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GradientContainer(
              padding: 8,
              child: FaIcon(
                FontAwesomeIcons.phone,
                color: kIconsColor,
                size: 18,
              ),
            ),
            SizedBox(width: SizeConfig.defaultSize!),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('PHONE',
                      style: AppStyles.styleNormal15(context).copyWith(
                          color: kLightGrayColor.withOpacity(0.7),
                          fontSize: 8)),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: InkWell(
                      onTap: () async {
                        urlLauncher(Uri.parse('tel:+4367763684823'));
                      },
                      child: Text(
                        '+43 677 63684823',
                        maxLines: 1,
                        textAlign: TextAlign.start,
                        style: AppStyles.styleLight15(context).copyWith(
                          color: Colors.white,
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: SizeConfig.defaultSize! * 1.5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GradientContainer(
              padding: 8,
              child: FaIcon(
                FontAwesomeIcons.locationArrow,
                color: kIconsColor,
                size: 18,
              ),
            ),
            SizedBox(width: SizeConfig.defaultSize!),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('LOCATION',
                      style: AppStyles.styleNormal15(context).copyWith(
                          color: kLightGrayColor.withOpacity(0.7),
                          fontSize: 8)),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Innsbruck, Austria',
                      maxLines: 1,
                      style: AppStyles.styleLight15(context).copyWith(
                        color: Colors.white,
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
