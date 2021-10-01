import 'package:ewtc/pages/about.dart';
import 'package:ewtc/pages/contact.dart';
import 'package:ewtc/pages/services.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const String mainPageId = 'main_page';
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final double pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
         body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: pageHeight,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushNamed(MainPage.mainPageId);
                        });
                      },
                      child: Text('Home')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushNamed(About.aboutId);
                        });
                      },
                      child: Text('About')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushNamed(Services.servicesId);
                        });
                      },
                      child: Text('Services')),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushNamed(Contact.contactId);
                        });
                      },
                      child: Text('Contact')),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    About(),
                    Services(),
                    Contact(),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
     
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_upward_sharp),
      ),
    );
  }
}
