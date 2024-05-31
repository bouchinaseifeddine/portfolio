import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/functions/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          alignment: Alignment.topCenter,
          onPressed: () async {
            await urlLauncher(
                Uri.parse('https://www.linkedin.com/in/seifeddine-bouchina/'));
          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            color: Color(0xff0A66C2),
            size: 18,
          ),
        ),
        IconButton(
          alignment: Alignment.topCenter,
          onPressed: () async {
            await urlLauncher(
                Uri.parse('https://github.com/bouchinaseifeddine'));
          },
          icon: const FaIcon(
            FontAwesomeIcons.github,
            color: Colors.white,
            size: 18,
          ),
        ),
        IconButton(
          alignment: Alignment.topCenter,
          onPressed: () async {
            await urlLauncher(
                Uri.parse('https://www.facebook.com/seifeddine.bouchina/'));
          },
          icon: const FaIcon(
            FontAwesomeIcons.facebook,
            color: Color(0xff0866FF),
            size: 18,
          ),
        ),
      ],
    );
  }
}
