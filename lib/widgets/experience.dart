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
        title: 'Software Devaloper - IT Source One, Amman, Jordan',
        text:
            'I am part of the remote flutter team, working on building multiple applications with a focus on creating user-friendly and high-performance solutions. My responsibilities include designing and implementing features, optimizing app performance, and collaborating with cross-functional teams to achieve project goals.',
        date: 'July 2024 — Present',
      ),
      MyTimeLineTile(
        isHeader: false,
        isFirst: false,
        isLast: false,
        title: 'Mobile Devaloper - Freelance',
        text:
            'Built 10+ mobile applications using the Flutter framework, gaining in-depth knowledge of its functionalities and best practices',
        date: 'December 2022 — Present',
      ),
      MyTimeLineTile(
        isHeader: false,
        isFirst: false,
        isLast: true,
        title: 'Web Devaloper - Freelance',
        text:
            'Leveraged my full-stack development skills to complete various projects for clients, gaining valuable experience in all aspects of web development.',
        date: 'January 2022 — Present',
      ),
    ]));
  }
}
