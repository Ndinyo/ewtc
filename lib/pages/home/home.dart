import 'dart:ui';

import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:ewtc/pages/about/about.dart';
import 'package:ewtc/pages/contact.dart';
import 'package:ewtc/pages/services.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
              backgroundColor: Colors.blueGrey.shade900.withOpacity(_opacity),
              elevation: 0,
              /* title: Text(
                'EWTC',
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ), */
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
                Container(
                  // image below the top bar
                  height: screenSize.height,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/front-view-desk.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 400,
                  child: Column(
                    children: [
                      Text(
                        'ELITE WRITING & ',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'TRAINING CONSULTANTS',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                /* Positioned(
                  bottom: 200,
                  left: 100,
                  //right: 300,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 50,
                      ),
                      Text(
                        'Professional: ',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(width: 20, height: 50),
                      DefaultTextStyle(
                        style: TextStyle(fontSize: 30, fontFamily: 'Horizon'),
                        child: AnimatedTextKit(animatedTexts: [
                          RotateAnimatedText('Consultants'),
                          RotateAnimatedText('Writers'),
                          RotateAnimatedText('Writers'),
                        ]),
                      ),
                    ],
                  ),
                ), */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
