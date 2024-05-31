import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncher(url) async {
  if (!await launchUrl(url)) {
    print('Could not launch $url');
  }
}
