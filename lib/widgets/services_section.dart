import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/data/services.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/gradient_container.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What I\'m doing',
          style: AppStyles.styleBold24(context),
        ),
        SizedBox(height: SizeConfig.defaultSize),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (final service in services)
              GradientContainer(
                padding: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SvgPicture.asset(
                        service.iconPath,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(width: SizeConfig.defaultSize),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            service.title,
                            style: AppStyles.styleSemiBold32(context)
                                .copyWith(fontSize: 18),
                          ),
                          SizedBox(height: SizeConfig.defaultSize! / 2),
                          Expanded(
                            child: Text(
                              service.text,
                              style: AppStyles.styleLight15(context),
                              maxLines: 3,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        )
      ],
    );
  }
}
