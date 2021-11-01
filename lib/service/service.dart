//import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Service {
  Future<void> lauchWhatsApp() async {
    const url = 'https://wa.me/qr/U2FQUSXIED3DL1';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error! Could not launch $url !';
    }
  }

  Future<void> lauchFb() async {
    const url = '';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error! Could not launch $url !';
    }
  }

  Future<void> lauchLinkedIn() async {
    const url = '';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error! Could not launch $url !';
    }
  }

  Future<void> lauchTwitter() async {
    const url = 'https://twitter.com/Lee_kiddo_?s=20';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Error! Could not launch $url !';
    }
  }
}
