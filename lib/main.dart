import 'package:ewtc/pages/about/about.dart';
import 'package:ewtc/pages/contact/contact.dart';
import 'package:ewtc/pages/home/home.dart';
import 'package:ewtc/pages/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Ewtc());
}

class Ewtc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elite Writing Consultants',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.homeId,
      routes: {
        HomePage.homeId: (context) => HomePage(),
        Contact.contactId: (context) => Contact(),
        Services.servicesId: (context) => Services(),
        About.aboutId: (context) => About(),
      },
    );
  }
}
