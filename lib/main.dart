import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(Ewtc());
}

class Ewtc extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elite Writing & Training Consultants',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EwtcLanding(),
    );
  }
}

class EwtcLanding extends StatefulWidget {
  EwtcLanding({Key? key}) : super(key: key);

  @override
  _EwtcLandingState createState() => _EwtcLandingState();
}

class _EwtcLandingState extends State<EwtcLanding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/underconst.jpg'),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlassmorphicContainer(
                  width: 420,
                  height: 100,
                  borderRadius: 20,
                  blur: 5,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      stops: [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.5),
                      Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    child: Center(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          WavyAnimatedText('Launching soon!'),
                          WavyAnimatedText('Keep Tabs!'),
                          WavyAnimatedText(
                              'Email us : hello@elitewritingconsultants.com'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
