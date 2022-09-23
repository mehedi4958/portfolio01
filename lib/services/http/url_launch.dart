import 'package:url_launcher/url_launcher.dart';

class UrlLaunch {
  Future<void> urlLaunch(String url) async {
    final isLaunchable = await canLaunchUrl(Uri.parse(url));
    if (isLaunchable) {
      launchUrl(Uri.parse(url));
    }
  }
}
