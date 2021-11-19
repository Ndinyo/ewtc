import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class About extends StatefulWidget {
  static const String aboutId = 'about';
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  double _opacity = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveHandler.isMobileScreen(context)
          ? AppBar(
              backgroundColor: Colors.transparent.withOpacity(_opacity),
              //elevation: 2,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: AppBarContents(opacity: _opacity),
            ),
      drawer: EwtcDrawer(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResponsiveHandler.isMobileScreen(context)
                  ? Container(
                      child: ClipPath(
                        clipper: WaveClipperOne(),
                        child: Column(
                          children: [
                            TopContainer(
                              height: 250,
                              width: screenSize.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  EntranceFader(
                                    offset: Offset(0, 0),
                                    delay: Duration(seconds: 1),
                                    duration: Duration(milliseconds: 800),
                                    child: Text(
                                      'About Us',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  EntranceFader(
                                    offset: Offset(0, 0),
                                    delay: Duration(seconds: 2),
                                    duration: Duration(milliseconds: 800),
                                    child: Text(
                                      'Get to know us',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Divider(
                                    indent: 2.0,
                                    endIndent: screenSize.width / 2,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            /*   Divider(),
                            Text('At your service'),
                            Divider(),
                           */
                          ],
                        ),
                      ),
                    )
                  : TopContainer(
                      height: 400,
                      width: screenSize.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 70),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 1),
                            duration: Duration(milliseconds: 800),
                            child: Text(
                              'About Us',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 2),
                            duration: Duration(milliseconds: 800),
                            child: Text(
                              'Get to know us',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          Divider(
                            indent: 2.0,
                            endIndent: screenSize.width * 0.8,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
