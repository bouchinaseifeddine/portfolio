import 'package:flutter/material.dart';
import 'package:portfolio/widgets/my_timeline_tile.dart';

class ResearchExperience extends StatelessWidget {
  const ResearchExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Column(children: [
      MyTimeLineTile(
        isHeader: true,
        isFirst: true,
        isLast: false,
        title: 'Research Experience',
      ),
      MyTimeLineTile(
        isHeader: false,
        isFirst: false,
        isLast: true,
        link:
            'https://drive.google.com/file/d/1PUL-ac3khL1THzuHjiwQMQM6C3SHndg6/view',
        title: 'University of Annaba, Computer Science Department',
        text:
            '• Developed the Balagh Mobile Application aimed at reporting urban issues and streamlining communication between citizens and local authorities in Annaba.\n'
            '• Designed and implemented an intuitive user interface allowing citizens to easily report problems such as potholes, garbage, and streetlight issues, including detailed descriptions, locations, and status updates.\n'
            '• Incorporated a prediction model using the ml-algo package on Flutter to assign scores to user reports based on factors like distance from the city center, category, type, and status (urgent/normal).\n'
            '• Facilitated community interaction by enabling users to view, support, and comment on reports submitted by others, enhancing civic engagement and community collaboration.\n'
            '• Developed a notification system to keep users informed about significant events related to their reports, such as approval and resolution updates.\n'
            '• Implemented separate user interfaces for regular users, authorities, and admins, providing tailored functionalities like report assignment, status tracking, and user account management.\n'
            '• Established a leaderboard and scoring system to encourage user participation and reward active contributors, promoting continuous community involvement.\n',
        date: 'September 2023 — May 2024',
      ),
    ]));
  }
}
