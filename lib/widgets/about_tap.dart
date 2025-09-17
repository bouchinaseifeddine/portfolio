import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/services_section.dart';
import 'package:portfolio/widgets/skills_section.dart';

class AboutTap extends StatelessWidget {
  const AboutTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.defaultSize),
        Text(
          "Hello! I’m Seif Eddine Bouchina, a dedicated and passionate Computer Science graduate from Badji Mokhtar University, Annaba. With a strong interest in Software development and AI, I am eager to contribute to and grow within the ever-evolving IT world.",
          style: AppStyles.styleLight15(context),
        ),
        SizedBox(height: SizeConfig.defaultSize),
        Text(
            style: AppStyles.styleLight15(context),
            'I\'m passionate mobile and web developer with 2 years of hands-on experience in creating  mobile apps, websites, problem solving and more. I\'m particularly interested in mobile development, and I\'m fascinated by the capabilities of the Flutter framework.'),
        SizedBox(height: SizeConfig.defaultSize),
        Text(
            style: AppStyles.styleLight15(context),
            'Whether you\'re an entrepreneur with a groundbreaking app idea or a business owner looking to enhance your online presence, I\'m here to turn your vision into reality.'),
        SizedBox(height: SizeConfig.defaultSize! * 2),
        const ServicesSection(),
        SizedBox(height: SizeConfig.defaultSize! * 2),
        const SkillsSection(),
      ],
    );
  }
}
