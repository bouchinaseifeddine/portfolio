import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/size_config.dart';

class SideInfo extends StatelessWidget {
  const SideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < 1200
        ? Row(
            children: [
              ClipRRect(
                borderRadius: width < 1200 ? kborderRaduis20 : kborderRaduis32,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: width < 1200 ? 80 : 150,
                ),
              ),
              SizedBox(width: SizeConfig.defaultSize! * 1.5),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Seifeddine Bouchina',
                        style: AppStyles.styleMedium26(context),
                      ),
                    ),
                    SizedBox(height: SizeConfig.defaultSize! * 1.5),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 18),
                        decoration: BoxDecoration(
                          borderRadius: kborderRaduis8,
                          color: kLightBackgroundColor,
                        ),
                        child: Text(
                          'Mobile Devaloper',
                          style: AppStyles.styleLight15(context)
                              .copyWith(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        : Column(
            children: [
              ClipRRect(
                borderRadius: kborderRaduis32,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize! * 1.5),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Seifeddine Bouchina',
                  style: AppStyles.styleMedium26(context),
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize! * 1.5),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                decoration: BoxDecoration(
                  borderRadius: kborderRaduis8,
                  color: kLightBackgroundColor,
                ),
                child: Text(
                  'Mobile Devaloper',
                  style: AppStyles.styleLight15(context).copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          );
  }
}
