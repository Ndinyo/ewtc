import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:ewtc/service/service.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

final service = Service();

class HomePage extends StatefulWidget {
  static const String homeId = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _scrollIndex = 0;
  double _opacity = 0;
  bool _showBackTopFab = false;
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController!.offset >= 400) {
            _showBackTopFab = true;
          } else {
            _showBackTopFab = false;
          }
        });
      });
    _scrollController!.addListener(_scrollListener);
    //_scrollController!.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose(); // dispose the controller
    super.dispose();
  }

  //Move to top callback
  void _scrollTop() async {
    await _scrollController!
        .animateTo(0, duration: Duration(seconds: 3), curve: Curves.linear);
  }

  _scrollListener() {
    setState(() {
      _scrollIndex = _scrollController!.position.pixels;
    });
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
              iconTheme: IconThemeData(color: kOrange),
              backgroundColor: Colors.white,
              actions: [
                Container(),
                Container(
                  width: 100,
                  child: Image.asset('images/elite_transparent2.png'),
                )
              ],
              elevation: 5,
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
                ShaderMask(
                  blendMode: BlendMode.colorBurn,
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black12, Colors.black12],
                    ).createShader(bounds);
                  },
                  child: ResponsiveHandler.isMobileScreen(context)
                      ? Container(
                          // image below the top bar
                          height: screenSize.height - 150,
                          width: screenSize.width,
                          decoration: BoxDecoration(
                            //color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('images/office-desk.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : Container(
                          // image below the top bar
                          height: screenSize.height - 150,
                          width: screenSize.width,
                          decoration: BoxDecoration(
                            //color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('images/modern-desk.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                ),
                //New Home starts here
                Positioned(
                  top: 200,
                  right: 2,
                  left: 2,
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
                                        'Hello ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontSize: 25),
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
                                  ],
                                ),
                                SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'Welcome to the',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 30),
                                  ),
                                ),
                                SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'helm of writing',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.w600,
                                        color: kOrange,
                                        fontSize: 30),
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
                                        'Hello ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
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
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 2),
                                      duration: Duration(milliseconds: 800),
                                      child: Text(
                                        'Welcome to the ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontSize: 40),
                                      ),
                                    ),
                                    //SizedBox(width: 5),
                                    EntranceFader(
                                      offset: Offset(0, 0),
                                      delay: Duration(seconds: 2),
                                      duration: Duration(milliseconds: 800),
                                      child: Text(
                                        'helm of writing',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w600,
                                            color: kOrange,
                                            fontSize: 40),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
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
                              ColorizeAnimatedText('Professional Writing',
                                  textAlign: TextAlign.center,
                                  textStyle: colorizeTextStyleM,
                                  colors: colorizeColors),
                              ColorizeAnimatedText('Consultancy',
                                  textAlign: TextAlign.center,
                                  textStyle: colorizeTextStyleM,
                                  colors: colorizeColors),
                              ColorizeAnimatedText('Professional Training',
                                  textAlign: TextAlign.center,
                                  textStyle: colorizeTextStyleM,
                                  colors: colorizeColors),
                            ],
                          ),
                        ),
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
                              ColorizeAnimatedText('Professional Writing',
                                  textAlign: TextAlign.center,
                                  textStyle: colorizeTextStyleD,
                                  colors: colorizeColors),
                              ColorizeAnimatedText('Consultancy',
                                  textAlign: TextAlign.center,
                                  textStyle: colorizeTextStyleD,
                                  colors: colorizeColors),
                              ColorizeAnimatedText('Professional Training',
                                  textAlign: TextAlign.center,
                                  textStyle: colorizeTextStyleD,
                                  colors: colorizeColors),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(height: 10),
            ResponsiveHandler.isMobileScreen(context)
                ? Container(
                    color: Colors.white,
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
                        Text('?? Copyright 2021 All rights reserved.',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith()),
                      ],
                    ),
                  )
                : Container(
                    color: Colors.white,
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
                          '?? Copyright 2021 All rights reserved.',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
      floatingActionButton: _showBackTopFab == false
          ? null
          : FloatingActionButton(
              backgroundColor: kOrange,
              foregroundColor: Colors.white,
              onPressed: _scrollTop,
              child: Icon(Icons.arrow_upward),
            ),
    );
  }
}
