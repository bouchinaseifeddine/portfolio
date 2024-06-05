import 'package:flutter/material.dart';
import 'package:portfolio/data/projects.dart';

import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/project_item.dart';

class ProjectsTap extends StatelessWidget {
  const ProjectsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultSize),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          childAspectRatio: 1,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (final project in projects) ProjectItem(project: project),
          ],
        ),
      ],
    );
  }
}
