import 'package:flutter/material.dart';

class ProjectsTap extends StatelessWidget {
  const ProjectsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      childAspectRatio: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      physics: const NeverScrollableScrollPhysics(),
      children: const [],
    );
  }
}
