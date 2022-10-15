import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  static Future _launchUrl(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $uri';
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  static Future openLink({required String url}) => _launchUrl(Uri.parse(url));

  Future openEmail() {
    Uri uri = Uri(
      scheme: 'mailto',
      path: 'madhan.gannarapu410@gmail.com',
      query: encodeQueryParameters(<String, String>{'subject': ''}),
    );
    return _launchUrl(uri);
  }
}
