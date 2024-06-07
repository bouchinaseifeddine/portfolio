import 'package:auto_height_grid_view/auto_height_grid_view.dart';
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
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What I\'m doing',
          style: AppStyles.styleBold24(context),
        ),
        SizedBox(height: SizeConfig.defaultSize),
        AutoHeightGridView(
          itemCount: services.length,
          crossAxisCount: width < 800 ? 1 : 2,
          shrinkWrap: true,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          physics: const NeverScrollableScrollPhysics(),
          builder: (ctx, index) {
            return IntrinsicHeight(
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 150),
                child: GradientContainer(
                  padding: 30,
                  child: width < 800
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SvgPicture.asset(
                                services[index].iconPath,
                                width: 40,
                                height: 40,
                              ),
                            ),
                            SizedBox(height: SizeConfig.defaultSize),
                            Text(
                              services[index].title,
                              style: AppStyles.styleSemiBold32(context)
                                  .copyWith(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: SizeConfig.defaultSize),
                            Text(
                              services[index].text,
                              style: AppStyles.styleLight15(context),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SvgPicture.asset(
                                services[index].iconPath,
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
                                    services[index].title,
                                    style: AppStyles.styleSemiBold32(context)
                                        .copyWith(fontSize: 18),
                                  ),
                                  SizedBox(height: SizeConfig.defaultSize! / 2),
                                  Text(
                                    services[index].text,
                                    style: AppStyles.styleLight15(context),
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
