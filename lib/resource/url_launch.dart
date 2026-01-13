import 'package:url_launcher/url_launcher.dart';

Future openWeb(String? url) async {
  if (url == null) return;
  try {
    await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
  }
  // ignore: empty_catches
  catch (e) {}
}

Future openCall(String? phone) async {
  if (phone == null) return;
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: "+91${phone.replaceAll("+91", "").trim()}",
  );
  if (await canLaunchUrl(launchUri)) {
    await launchUrl(launchUri);
  } else {
    // Handle the case where the URI cannot be launched (e.g., show an error message)
    print('Could not launch $launchUri');
  }
}
