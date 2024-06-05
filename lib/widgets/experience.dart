import 'package:flutter/material.dart';
import 'package:portfolio/widgets/my_timeline_tile.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Column(children: [
      MyTimeLineTile(
        isHeader: true,
        isFirst: true,
        isLast: false,
        title: 'Experience',
      ),
      MyTimeLineTile(
        isHeader: false,
        isFirst: false,
        isLast: false,
        title: 'Freelance, Mobile Devaloper',
        text:
            'Built 10+ mobile applications using the Flutter framework, gaining in-depth knowledge of its functionalities and best practices',
        date: 'December 2022 — Present',
      ),
      MyTimeLineTile(
        isHeader: false,
        isFirst: false,
        isLast: true,
        title: 'Freelance, Web Devaloper',
        text:
            'Leveraged my full-stack development skills to complete various projects for clients, gaining valuable experience in all aspects of web development.',
        date: 'January 2022 — Present',
      ),
    ]));
  }
}
