import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/experience.dart';
import 'package:portfolio/widgets/education.dart';
import 'package:portfolio/widgets/research_experience.dart';

class ResumeTap extends StatelessWidget {
  const ResumeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.defaultSize),
        const Education(),
        SizedBox(height: SizeConfig.defaultSize),
        const Experience(),
        SizedBox(height: SizeConfig.defaultSize),
        const ResearchExperience(),
      ],
    );
  }
}
