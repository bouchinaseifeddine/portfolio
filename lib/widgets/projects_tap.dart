import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/projects.dart';

import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/project_item.dart';

class ProjectsTap extends StatelessWidget {
  const ProjectsTap({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultSize),
        AutoHeightGridView(
          crossAxisCount: width < 1200
              ? width < 800
                  ? 1
                  : 2
              : 3,
          shrinkWrap: true,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: projects.length,
          builder: (BuildContext context, int index) {
            return ProjectItem(project: projects[index]);
          },
        ),
      ],
    );
  }
}
