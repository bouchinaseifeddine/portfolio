import 'package:flutter/material.dart';
import 'package:portfolio/widgets/my_timeline_tile.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Column(children: [
      MyTimeLineTile(
        isHeader: true,
        isFirst: true,
        isLast: false,
        title: 'Education',
      ),
      MyTimeLineTile(
        isHeader: false,
        isFirst: false,
        isLast: false,
        title: 'University of Annaba, Computer Science Department',
        text:
            'Pursuing a Bachelor\'s degree in Computer Science at Badji Mokhtar University in Annaba. This comprehensive program covers a wide range of subjects including algorithms, data structures, software development, and artificial intelligence. The curriculum is designed to provide a solid foundation in both theoretical and practical aspects of computer science, preparing students for the dynamic field of technology.',
        date: 'September 2021 — June 2024',
      ),
      MyTimeLineTile(
        isHeader: false,
        isFirst: false,
        isLast: true,
        title: 'University of Annaba, Science Technology Department',
        text:
            'Completed a preparatory year in Science and Technology at Badji Mokhtar University in Annaba. This program provided a robust introduction to the fundamental principles of science and technology, including physics, chemistry, and mathematics. The coursework was aimed at equipping students with the essential knowledge and skills required for advanced studies in technical and scientific disciplines.',
        date: 'November 2020 — June 2021',
      ),
    ]));
  }
}
