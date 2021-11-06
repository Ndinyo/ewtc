import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

/* class ScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
} */

class Services extends StatefulWidget {
  static const String servicesId = 'services';
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> with TickerProviderStateMixin {
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
        controller: _scrollController,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResponsiveHandler.isMobileScreen(context)
                  ? Container(
                      child: ClipPath(
                        clipper: WaveClipperTwo(),
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
                                      'Services',
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
                                      'See what we do best',
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
                            SizedBox(height: 10),
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
                              'Services',
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
                              'See what we do best',
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
              ResponsiveHandler.isMobileScreen(context)
                  ? Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 3),
                            duration: Duration(milliseconds: 800),
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Our services keep you happy',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(color: kOrange),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Our heart and soul',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 4),
                            duration: Duration(milliseconds: 800),
                            child: Container(
                              child: Column(
                                children: [
                                  ServicesCard(
                                    asset: 'images/writing.jpg',
                                    heading: 'Professional Writing',
                                    body: writing,
                                    //faIcon: FaIcon(FontAwesomeIcons.pen),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    asset: 'images/training.jpg',
                                    heading: 'Professional Training',
                                    body: training,
                                    //faIcon: FaIcon(
                                    //FontAwesomeIcons.chalkboardTeacher),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    asset: 'images/mentoring.jpg',
                                    heading: 'Mentorship',
                                    body: mentorship,
                                    //faIcon: FaIcon(FontAwesomeIcons.users),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    asset: 'images/research.jpg',
                                    heading: 'Research',
                                    body: research,
                                    //faIcon:
                                    //FaIcon(FontAwesomeIcons.researchgate),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    asset: 'images/consult.jpg',
                                    heading: 'Consultancy',
                                    body: consultancy,
                                    //faIcon: FaIcon(FontAwesomeIcons.infoCircle),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    asset: 'images/account.jpg',
                                    heading: 'Accounts Management',
                                    body: aManagement,
                                    //faIcon:
                                    //FaIcon(FontAwesomeIcons.addressBook),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          SizedBox(height: 10),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 5),
                            duration: Duration(seconds: 4),
                            child: Row(
                              //show circlular progress
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircularPercentIndicator(
                                  animationDuration: 4500,
                                  radius: 90.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.96,
                                  center: Text('96.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.blue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Writing')),
                                ),
                                CircularPercentIndicator(
                                  animationDuration: 4500,
                                  radius: 90.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.94,
                                  center: Text('94.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.blue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Training')),
                                ),
                                /* CircularPercentIndicator(
                                  animationDuration: 2500,
                                  radius: 120.0,
                                  lineWidth: 10.0,
                                  animation: true,
                                  percent: 0.92,
                                  center: Text('92.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: kBlue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Consultancy')),
                                ), */
                                CircularPercentIndicator(
                                  animationDuration: 4500,
                                  radius: 90.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.95,
                                  center: Text('95.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.blue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Mentorship')),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(),
                          SizedBox(height: 10),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 6),
                            duration: Duration(milliseconds: 800),
                            child: Text(
                              'Training Ongoing!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: kOrange),
                            ),
                          ),
                          SizedBox(height: 10),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 6),
                            duration: Duration(milliseconds: 800),
                            child: Container(
                              height: 500.0,
                              width: screenSize.width - 50,
                              decoration: BoxDecoration(
                                //color: Colors.black.withOpacity(0.8),
                                image: DecorationImage(
                                  image: AssetImage('images/poster.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 3),
                            duration: Duration(milliseconds: 800),
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Our services keep you happy',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(color: kOrange),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Our heart and soul',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 4),
                            duration: Duration(milliseconds: 800),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ServicesCard(
                                    asset: 'images/writing.jpg',
                                    heading: 'Professional Writing',
                                    body: writing,
                                    //faIcon: FaIcon(FontAwesomeIcons.pen),
                                  ),
                                  ServicesCard(
                                    asset: 'images/training.jpg',
                                    heading: 'Professional Training',
                                    body: training,
                                    //faIcon: FaIcon(
                                    //FontAwesomeIcons.chalkboardTeacher),
                                  ),
                                  ServicesCard(
                                    asset: 'images/mentoring.jpg',
                                    heading: 'Mentorship',
                                    body: mentorship,
                                    //faIcon: FaIcon(FontAwesomeIcons.users),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 5),
                            duration: Duration(milliseconds: 800),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ServicesCard(
                                    asset: 'images/research.jpg',
                                    heading: 'Research',
                                    body: research,
                                    //faIcon:
                                    //FaIcon(FontAwesomeIcons.researchgate),
                                  ),
                                  ServicesCard(
                                    asset: 'images/consult.jpg',
                                    heading: 'Consultancy',
                                    body: consultancy,
                                    //faIcon: FaIcon(FontAwesomeIcons.infoCircle),
                                  ),
                                  ServicesCard(
                                    asset: 'images/account.jpg',
                                    heading: 'Accounts Management',
                                    body: aManagement,
                                    //faIcon:
                                    //FaIcon(FontAwesomeIcons.addressBook),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          SizedBox(height: 10),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 6),
                            duration: Duration(seconds: 4),
                            child: Row(
                              //show circlular progress
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircularPercentIndicator(
                                  animationDuration: 4500,
                                  radius: 120.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.96,
                                  center: Text('96.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.blue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Writing')),
                                ),
                                CircularPercentIndicator(
                                  animationDuration: 4500,
                                  radius: 120.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.94,
                                  center: Text('94.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.blue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Training')),
                                ),
                                /* CircularPercentIndicator(
                                  animationDuration: 2500,
                                  radius: 120.0,
                                  lineWidth: 10.0,
                                  animation: true,
                                  percent: 0.92,
                                  center: Text('92.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: kBlue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Consultancy')),
                                ), */
                                CircularPercentIndicator(
                                  animationDuration: 4500,
                                  radius: 120.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.95,
                                  center: Text('95.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.blue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Mentorship')),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(),
                          SizedBox(height: 20),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 6),
                            duration: Duration(milliseconds: 800),
                            child: Text(
                              'Training Ongoing!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: kOrange),
                            ),
                          ),
                          SizedBox(height: 10),
                          EntranceFader(
                            offset: Offset(0, 0),
                            delay: Duration(seconds: 6),
                            duration: Duration(milliseconds: 800),
                            child: Container(
                              height: 500.0,
                              width: (screenSize.width / 2) - 100,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                image: DecorationImage(
                                  image: AssetImage('images/poster.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              /* child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Customer satisfaction is of utmost importance. Our services are tailored with the customer needs in mind. Join our team of professionals and let us take care of your needs!',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ), */
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
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
