import 'package:flutter/material.dart';
import 'package:portfolio/data/skills.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/gradient_container.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My skills',
          style: AppStyles.styleBold24(context),
        ),
        SizedBox(height: SizeConfig.defaultSize),
        Wrap(
          spacing: SizeConfig.defaultSize!,
          runSpacing: SizeConfig.defaultSize!,
          alignment: WrapAlignment.center,
          children: [
            for (final skill in skills)
              GradientContainer(
                borderRaduis: 16,
                padding: 10,
                child: Text(
                  skill,
                  style: AppStyles.styleNormal15(context)
                      .copyWith(color: Colors.white),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
