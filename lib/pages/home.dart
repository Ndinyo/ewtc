import 'dart:ui';
import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:ewtc/pages/about.dart';
import 'package:ewtc/pages/contact.dart';
import 'package:ewtc/pages/services.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const String homeId = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  double _scrollIndex = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollIndex = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  Future<void> lauchWhatsApp() async {
    const url = 'https://wa.me/message/SDED5LDAI6GCK1';

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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollIndex < screenSize.height * 0.40
        ? _scrollIndex / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveHandler.isMobileScreen(context)
          ? AppBar(
              backgroundColor: Colors.transparent.withOpacity(_opacity),
              elevation: 2,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: AppBarContents(opacity: _opacity),
            ),
      drawer: EwtcDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Container(
                      height: screenSize.height,
                      width: screenSize.width / 2,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ResponsiveHandler.isMobileScreen(context)
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'HELLO!',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.merriweather(
                                                    fontWeight: FontWeight.w600,
                                                    color: kBlue,
                                                    fontSize: 15),
                                              ),
                                              EntranceFader(
                                                offset: Offset(0, 0),
                                                delay: Duration(seconds: 2),
                                                duration:
                                                    Duration(milliseconds: 800),
                                                child: Image.asset(
                                                  'images/hi.gif',
                                                  height:
                                                      screenSize.height * 0.05,
                                                ),
                                              ),
                                              Text(
                                                'WELCOME TO',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.merriweather(
                                                    fontWeight: FontWeight.w600,
                                                    color: kBlue,
                                                    fontSize: 15),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'THE HELM',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.merriweather(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            'OF WRITING',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.merriweather(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                        ],
                                      )
                                    : Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'HELLO!',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.merriweather(
                                                    fontWeight: FontWeight.w600,
                                                    color: kBlue,
                                                    fontSize: 20),
                                              ),
                                              EntranceFader(
                                                offset: Offset(0, 0),
                                                delay: Duration(seconds: 2),
                                                duration:
                                                    Duration(milliseconds: 800),
                                                child: Image.asset(
                                                  'images/hi.gif',
                                                  height:
                                                      screenSize.height * 0.05,
                                                ),
                                              ),
                                              Text(
                                                'WELCOME TO',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.merriweather(
                                                    fontWeight: FontWeight.w600,
                                                    color: kBlue,
                                                    fontSize: 20),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'THE HELM',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.merriweather(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                                fontSize: 50),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'OF WRITING',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.merriweather(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                                fontSize: 50),
                                          ),
                                        ],
                                      ),
                                ResponsiveHandler.isMobileScreen(context)
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 10),
                                          SizedBox(
                                            width: 300,
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: true,
                                              animatedTexts: [
                                                ColorizeAnimatedText(
                                                    'Professional Writing',
                                                    textStyle:
                                                        colorizeTextStyleM,
                                                    colors: colorizeColors),
                                                ColorizeAnimatedText(
                                                    'Consultancy',
                                                    textStyle:
                                                        colorizeTextStyleM,
                                                    colors: colorizeColors),
                                                ColorizeAnimatedText(
                                                    'Professional Training',
                                                    textStyle:
                                                        colorizeTextStyleM,
                                                    colors: colorizeColors),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                              width: 160,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                topLeft: Radius.circular(100.0),
                                                topRight:
                                                    Radius.circular(100.0),
                                                bottomRight:
                                                    Radius.circular(100.0),
                                                bottomLeft:
                                                    Radius.circular(100.0),
                                              )),
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors
                                                                .orangeAccent),
                                                  ),
                                                  onPressed: () {},
                                                  child: Text('Get Started',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline5!
                                                          .copyWith(
                                                              color: Colors
                                                                  .white))))
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          SizedBox(height: 20),
                                          SizedBox(
                                            width: 300,
                                            child: AnimatedTextKit(
                                              isRepeatingAnimation: true,
                                              animatedTexts: [
                                                ColorizeAnimatedText(
                                                    'Professional Writing',
                                                    textStyle:
                                                        colorizeTextStyleD,
                                                    colors: colorizeColors),
                                                ColorizeAnimatedText(
                                                    'Consultancy',
                                                    textStyle:
                                                        colorizeTextStyleD,
                                                    colors: colorizeColors),
                                                ColorizeAnimatedText(
                                                    'Professional Training',
                                                    textStyle:
                                                        colorizeTextStyleD,
                                                    colors: colorizeColors),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Container(
                                              width: 160,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                topLeft: Radius.circular(100.0),
                                                topRight:
                                                    Radius.circular(100.0),
                                                bottomRight:
                                                    Radius.circular(100.0),
                                                bottomLeft:
                                                    Radius.circular(100.0),
                                              )),
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors
                                                                .orangeAccent),
                                                  ),
                                                  onPressed: () {},
                                                  child: Text('Get Started',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headline5!
                                                          .copyWith(
                                                              color: Colors
                                                                  .white))))
                                        ],
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 1),
                      duration: Duration(milliseconds: 800),
                      child: Container(
                        // image below the top bar
                        height: screenSize.height,
                        width: screenSize.width / 2,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          image: DecorationImage(
                            image: AssetImage('images/elite_transparent2.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ResponsiveHandler.isMobileScreen(context)
                    ? Positioned(
                        bottom: 30,
                        //left: 50,
                        //right: 50,
                        child: Container(
                          width: screenSize.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                child: InkWell(
                                  onTap: () {},
                                  child: FaIcon(FontAwesomeIcons.facebook),
                                ),
                              ),
                              SizedBox(width: 5),
                              CircleAvatar(
                                radius: 15,
                                child: InkWell(
                                  onTap: () {},
                                  child: FaIcon(FontAwesomeIcons.twitter),
                                ),
                              ),
                              SizedBox(width: 5),
                              CircleAvatar(
                                radius: 15,
                                child: InkWell(
                                  onTap: () {},
                                  child: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              SizedBox(width: 5),
                              CircleAvatar(
                                radius: 15,
                                child: InkWell(
                                  onTap: () {},
                                  child: FaIcon(FontAwesomeIcons.whatsapp),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('© Copyright 2021 All rights reserved.')
                            ],
                          ),
                        ))
                    : Positioned(
                        bottom: 30,
                        left: 50,
                        right: 50,
                        child: Container(
                          width: screenSize.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                child: InkWell(
                                  onTap: () {},
                                  child: FaIcon(FontAwesomeIcons.facebook),
                                ),
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 15,
                                child: InkWell(
                                  onTap: () {
                                    lauchTwitter();
                                  },
                                  child: FaIcon(FontAwesomeIcons.twitter),
                                ),
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 15,
                                child: InkWell(
                                  onTap: () {},
                                  child: FaIcon(FontAwesomeIcons.linkedin),
                                ),
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                backgroundColor: Colors.teal,
                                radius: 15,
                                child: InkWell(
                                  onTap: () {
                                    lauchWhatsApp();
                                  },
                                  child: FaIcon(FontAwesomeIcons.whatsapp),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('© Copyright 2021 All rights reserved.',
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                        )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
