import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/functions/url_launcher.dart';
import 'package:portfolio/utils/size_config.dart';

class SideMoreInfo extends StatelessWidget {
  const SideMoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: kborderRaduis12,
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(67, 67, 134, 0.941),
                        Color.fromRGBO(68, 68, 139, 0.671),
                        Color.fromRGBO(38, 38, 89, 0.479),
                        Color.fromRGBO(38, 38, 38, 0),
                        Color.fromRGBO(38, 38, 38, 0),
                        Color.fromRGBO(68, 68, 139, 0.671),
                      ])),
              child: const FaIcon(
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
                        await urlLauncher(Uri.parse(
                            'mailto:bouchinaseifeddine@gmail.com?subject=News&body=New%20plugin'));
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
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: kborderRaduis12,
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(67, 67, 134, 0.941),
                        Color.fromRGBO(68, 68, 139, 0.671),
                        Color.fromRGBO(38, 38, 89, 0.479),
                        Color.fromRGBO(38, 38, 38, 0),
                        Color.fromRGBO(38, 38, 38, 0),
                        Color.fromRGBO(68, 68, 139, 0.671),
                      ])),
              child: const FaIcon(
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
                        urlLauncher(Uri.parse('tel:+213560708476'));
                      },
                      child: Text(
                        '+213 560708476',
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
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: kborderRaduis12,
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(67, 67, 134, 0.941),
                        Color.fromRGBO(68, 68, 139, 0.671),
                        Color.fromRGBO(38, 38, 89, 0.479),
                        Color.fromRGBO(38, 38, 38, 0),
                        Color.fromRGBO(38, 38, 38, 0),
                        Color.fromRGBO(68, 68, 139, 0.671),
                      ])),
              child: const FaIcon(
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
                      'Drean, Tarf, DZ',
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
