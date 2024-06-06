import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncher(url) async {
  !await launchUrl(url);
}
