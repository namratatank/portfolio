import 'package:url_launcher/url_launcher.dart';

class LaunchMethod {

  launchURL(String link) async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:8320072886";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchMessenger() async {
    const url = "sms:8320072886";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    if (await canLaunch("mailto:tanknamrata.tn@gmail.com")) {
      await launch("mailto:tanknamrata.tn@gmail.com");
    } else {
      throw 'Could not launch';
    }
  }

}
