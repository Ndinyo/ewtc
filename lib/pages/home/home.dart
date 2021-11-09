import 'dart:ui';
import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:ewtc/service/service.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  final service = Service();

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
              //elevation: 2,
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: AppBarContents(opacity: _opacity),
            ),
      drawer: EwtcDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  // image below the top bar
                  height: screenSize.height - 70,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    image: DecorationImage(
                      image: AssetImage('images/office-desk.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                //New Home starts here
                Positioned(
                  top: 200,
                  right: 10,
                  left: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ResponsiveHandler.isMobileScreen(context)
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 1),
                                      duration: Duration(milliseconds: 800),
                                      child: Text(
                                        'HELLO!',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: kOrange,
                                            fontSize: 20),
                                      ),
                                    ),
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 1),
                                      duration: Duration(milliseconds: 800),
                                      child: Image.asset(
                                        'images/hi.gif',
                                        height: screenSize.height * 0.05,
                                      ),
                                    ),
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 1),
                                      duration: Duration(milliseconds: 800),
                                      child: Text(
                                        'WELCOME TO',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: kOrange,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'THE HELM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.w600,
                                        color: kBlue,
                                        fontSize: 40),
                                  ),
                                ),
                                SizedBox(height: 5),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'OF WRITING',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.w600,
                                        color: kBlue,
                                        fontSize: 40),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 1),
                                      duration: Duration(milliseconds: 800),
                                      child: Text(
                                        'HELLO!',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: kOrange,
                                            fontSize: 30),
                                      ),
                                    ),
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 1),
                                      duration: Duration(milliseconds: 800),
                                      child: Image.asset(
                                        'images/hi.gif',
                                        height: screenSize.height * 0.05,
                                      ),
                                    ),
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 1),
                                      duration: Duration(milliseconds: 800),
                                      child: Text(
                                        'WELCOME TO',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: kOrange,
                                            fontSize: 30),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'THE HELM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.w600,
                                        color: kBlue,
                                        fontSize: 60),
                                  ),
                                ),
                                SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'OF WRITING',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.w600,
                                        color: kBlue,
                                        fontSize: 60),
                                  ),
                                ),
                              ],
                            ),
                      ResponsiveHandler.isMobileScreen(context)
                          ? EntranceFader(
                              offset: Offset(0, 0),
                              delay: Duration(seconds: 3),
                              duration: Duration(milliseconds: 800),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10),
                                  SizedBox(
                                    width: 300,
                                    child: AnimatedTextKit(
                                      repeatForever: true,
                                      isRepeatingAnimation: true,
                                      animatedTexts: [
                                        ColorizeAnimatedText(
                                            'Professional Writing',
                                            textAlign: TextAlign.center,
                                            textStyle: colorizeTextStyleM,
                                            colors: colorizeColors),
                                        ColorizeAnimatedText('Consultancy',
                                            textAlign: TextAlign.center,
                                            textStyle: colorizeTextStyleM,
                                            colors: colorizeColors),
                                        ColorizeAnimatedText(
                                            'Professional Training',
                                            textAlign: TextAlign.center,
                                            textStyle: colorizeTextStyleM,
                                            colors: colorizeColors),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                      width: 140,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100.0),
                                        topRight: Radius.circular(100.0),
                                        bottomRight: Radius.circular(100.0),
                                        bottomLeft: Radius.circular(100.0),
                                      )),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    kOrange),
                                          ),
                                          onPressed: () {},
                                          child: Text('Get Started',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6!
                                                  .copyWith(
                                                      color: Colors.white))))
                                ],
                              ),
                            )
                          : EntranceFader(
                              offset: Offset(0, 0),
                              delay: Duration(seconds: 3),
                              duration: Duration(milliseconds: 800),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  SizedBox(
                                    width: 400,
                                    child: AnimatedTextKit(
                                      repeatForever: true,
                                      isRepeatingAnimation: true,
                                      animatedTexts: [
                                        ColorizeAnimatedText(
                                            'Professional Writing',
                                            textAlign: TextAlign.center,
                                            textStyle: colorizeTextStyleD,
                                            colors: colorizeColors),
                                        ColorizeAnimatedText('Consultancy',
                                            textAlign: TextAlign.center,
                                            textStyle: colorizeTextStyleD,
                                            colors: colorizeColors),
                                        ColorizeAnimatedText(
                                            'Professional Training',
                                            textAlign: TextAlign.center,
                                            textStyle: colorizeTextStyleD,
                                            colors: colorizeColors),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                      width: 160,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100.0),
                                        topRight: Radius.circular(100.0),
                                        bottomRight: Radius.circular(100.0),
                                        bottomLeft: Radius.circular(100.0),
                                      )),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    kOrange),
                                          ),
                                          onPressed: () {},
                                          child: Text('Get Started',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.white))))
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
            //Bottom copyright section
            ResponsiveHandler.isMobileScreen(context)
                ? Container(
                    color: Colors.black87,
                    width: screenSize.width,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              child: InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: FaIcon(FontAwesomeIcons.facebook),
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 15,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    service.lauchTwitter();
                                  });
                                },
                                child: FaIcon(FontAwesomeIcons.twitter),
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 15,
                              child: InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: FaIcon(FontAwesomeIcons.linkedin),
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.teal,
                              radius: 15,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    service.lauchWhatsApp();
                                  });
                                },
                                child: FaIcon(FontAwesomeIcons.whatsapp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text('© Copyright 2021 All rights reserved.',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  )
                : Container(
                    color: Colors.black87,
                    height: 70,
                    width: screenSize.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: FaIcon(FontAwesomeIcons.facebook),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 15,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                service.lauchTwitter();
                              });
                            },
                            child: FaIcon(FontAwesomeIcons.twitter),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 15,
                          child: InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: FaIcon(FontAwesomeIcons.linkedin),
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 15,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                service.lauchWhatsApp();
                              });
                            },
                            child: FaIcon(FontAwesomeIcons.whatsapp),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '© Copyright 2021 All rights reserved.',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
