import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Services extends StatefulWidget {
  static const String servicesId = 'services';
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  double _opacity = 0;
  //final _scrollController = ScrollController();

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
        //controller: _scrollController,
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
                                    endIndent: 20.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            /*     Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Our services keep you happy.',
                                    style: Theme.of(context).textTheme.headline5,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Our heart and soul.',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(60.0),
                                            topRight: Radius.circular(60.0),
                                            bottomRight: Radius.circular(60.0),
                                            bottomLeft: Radius.circular(60.0),
                                          )),
                                          width: 200,
                                          height: 200,
                                          child: ListTile(
                                            leading: CircleAvatar(),
                                            title: Text('Consultancy'),
                                            subtitle: Text('Subtitle'),
                                          ),
                                        ),
                                      ),
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(60.0),
                                            topRight: Radius.circular(60.0),
                                            bottomRight: Radius.circular(60.0),
                                            bottomLeft: Radius.circular(60.0),
                                          )),
                                          width: 200,
                                          height: 200,
                                          child: ListTile(
                                            leading: CircleAvatar(),
                                            title: Text('Professional Writing'),
                                            subtitle: Text('Subtitle'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(60.0),
                                            topRight: Radius.circular(60.0),
                                            bottomRight: Radius.circular(60.0),
                                            bottomLeft: Radius.circular(60.0),
                                          )),
                                          width: 200,
                                          height: 200,
                                          child: ListTile(
                                            leading: CircleAvatar(),
                                            title: Text('Professional Training'),
                                            subtitle: Text('Subtitle'),
                                          ),
                                        ),
                                      ),
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(60.0),
                                            topRight: Radius.circular(60.0),
                                            bottomRight: Radius.circular(60.0),
                                            bottomLeft: Radius.circular(60.0),
                                          )),
                                          width: 200,
                                          height: 200,
                                          child: ListTile(
                                            leading: CircleAvatar(),
                                            title: Text('Professional Writing'),
                                            subtitle: Text('Subtitle'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(60.0),
                                            topRight: Radius.circular(60.0),
                                            bottomRight: Radius.circular(60.0),
                                            bottomLeft: Radius.circular(60.0),
                                          )),
                                          width: 200,
                                          height: 200,
                                          child: ListTile(
                                            leading: CircleAvatar(),
                                            title: Text('Professional Training'),
                                            subtitle: Text('Subtitle'),
                                          ),
                                        ),
                                      ),
                                      Card(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(60.0),
                                            topRight: Radius.circular(60.0),
                                            bottomRight: Radius.circular(60.0),
                                            bottomLeft: Radius.circular(60.0),
                                          )),
                                          width: 200,
                                          height: 200,
                                          child: ListTile(
                                            leading: CircleAvatar(),
                                            title: Text('Professional Writing'),
                                            subtitle: Text('Subtitle'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  SizedBox(height: 10),
                                  Row(
                                    //show circlular progress
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircularPercentIndicator(
                                        animationDuration: 2500,
                                        radius: 120.0,
                                        lineWidth: 7.0,
                                        animation: true,
                                        percent: 0.96,
                                        center: Text('96.0%'),
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        progressColor: kBlue,
                                        backgroundColor: Colors.yellow,
                                        footer: Center(child: Text('Writing')),
                                      ),
                                      CircularPercentIndicator(
                                        animationDuration: 2500,
                                        radius: 120.0,
                                        lineWidth: 7.0,
                                        animation: true,
                                        percent: 0.94,
                                        center: Text('94%'),
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        progressColor: kBlue,
                                        backgroundColor: Colors.yellow,
                                        footer: Center(child: Text('Training')),
                                      ),
                                      CircularPercentIndicator(
                                        animationDuration: 2500,
                                        radius: 120.0,
                                        lineWidth: 7.0,
                                        animation: true,
                                        percent: 0.92,
                                        center: Text('92.0%'),
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        progressColor: kBlue,
                                        backgroundColor: Colors.yellow,
                                        footer:
                                            Center(child: Text('Consultancy')),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Divider(),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
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
                            endIndent: 5.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
              //SizedBox(height: 20),
              /*   Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'Our services keep you happy.',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Our heart and soul.',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60.0),
                                      topRight: Radius.circular(60.0),
                                      bottomRight: Radius.circular(60.0),
                                      bottomLeft: Radius.circular(60.0),
                                    )),
                                    width: 200,
                                    height: 200,
                                    child: ListTile(
                                      leading: CircleAvatar(),
                                      title: Text('Consultancy'),
                                      subtitle: Text('Subtitle'),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60.0),
                                      topRight: Radius.circular(60.0),
                                      bottomRight: Radius.circular(60.0),
                                      bottomLeft: Radius.circular(60.0),
                                    )),
                                    width: 200,
                                    height: 200,
                                    child: ListTile(
                                      leading: CircleAvatar(),
                                      title: Text('Professional Writing'),
                                      subtitle: Text('Subtitle'),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60.0),
                                      topRight: Radius.circular(60.0),
                                      bottomRight: Radius.circular(60.0),
                                      bottomLeft: Radius.circular(60.0),
                                    )),
                                    width: 200,
                                    height: 200,
                                    child: ListTile(
                                      leading: CircleAvatar(),
                                      title: Text('Professional Training'),
                                      subtitle: Text('Subtitle'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60.0),
                                      topRight: Radius.circular(60.0),
                                      bottomRight: Radius.circular(60.0),
                                      bottomLeft: Radius.circular(60.0),
                                    )),
                                    width: 200,
                                    height: 200,
                                    child: ListTile(
                                      leading: CircleAvatar(),
                                      title: Text('Consultancy'),
                                      subtitle: Text('Subtitle'),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60.0),
                                      topRight: Radius.circular(60.0),
                                      bottomRight: Radius.circular(60.0),
                                      bottomLeft: Radius.circular(60.0),
                                    )),
                                    width: 200,
                                    height: 200,
                                    child: ListTile(
                                      leading: CircleAvatar(),
                                      title: Text('Professional Writing'),
                                      subtitle: Text('Subtitle'),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60.0),
                                      topRight: Radius.circular(60.0),
                                      bottomRight: Radius.circular(60.0),
                                      bottomLeft: Radius.circular(60.0),
                                    )),
                                    width: 200,
                                    height: 200,
                                    child: ListTile(
                                      leading: CircleAvatar(),
                                      title: Text('Professional Training'),
                                      subtitle: Text('Subtitle'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Divider(),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                CircularPercentIndicator(
                                  animationDuration: 2500,
                                  radius: 120.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.96,
                                  center: Text('96.0%'),
                                  circularStrokeCap:
                                      CircularStrokeCap.round,
                                  progressColor: kBlue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Writing')),
                                ),
                                CircularPercentIndicator(
                                  animationDuration: 2500,
                                  radius: 120.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.94,
                                  center: Text('94%'),
                                  circularStrokeCap:
                                      CircularStrokeCap.round,
                                  progressColor: kBlue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Training')),
                                ),
                                CircularPercentIndicator(
                                  animationDuration: 2500,
                                  radius: 120.0,
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.92,
                                  center: Text('92.0%'),
                                  circularStrokeCap:
                                      CircularStrokeCap.round,
                                  progressColor: kBlue,
                                  backgroundColor: Colors.yellow,
                                  footer:
                                      Center(child: Text('Consultancy')),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    */
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
                                    'Our services keep you happy.',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Our heart and soul.',
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
                                    heading: 'Professional Writing',
                                    body: writing,
                                    faIcon: FaIcon(FontAwesomeIcons.pen),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    heading: 'Professional Training',
                                    body: training,
                                    faIcon: FaIcon(
                                        FontAwesomeIcons.chalkboardTeacher),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    heading: 'Mentorship',
                                    body: mentorship,
                                    faIcon: FaIcon(FontAwesomeIcons.users),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    heading: 'Research',
                                    body: research,
                                    faIcon:
                                        FaIcon(FontAwesomeIcons.researchgate),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    heading: 'Consultancy',
                                    body: consultancy,
                                    faIcon: FaIcon(FontAwesomeIcons.infoCircle),
                                  ),
                                  SizedBox(height: 10),
                                  ServicesCard(
                                    heading: 'Accounts Management',
                                    body: aManagement,
                                    faIcon:
                                        FaIcon(FontAwesomeIcons.addressBook),
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
                            duration: Duration(milliseconds: 800),
                            child: Row(
                              //show circlular progress
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircularPercentIndicator(
                                  animationDuration: 2500,
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
                                  animationDuration: 2500,
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
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.92,
                                  center: Text('92.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: kBlue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Consultancy')),
                                ), */
                                CircularPercentIndicator(
                                  animationDuration: 2500,
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
                            child: Container(
                              height: 300.0,
                              width: screenSize.width,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                image: DecorationImage(
                                  image: AssetImage('images/writing-desk.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Padding(
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
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
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
                                    'Our services keep you happy.',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Our heart and soul.',
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
                                    heading: 'Professional Writing',
                                    body: writing,
                                    faIcon: FaIcon(FontAwesomeIcons.pen),
                                  ),
                                  ServicesCard(
                                    heading: 'Professional Training',
                                    body: training,
                                    faIcon: FaIcon(
                                        FontAwesomeIcons.chalkboardTeacher),
                                  ),
                                  ServicesCard(
                                    heading: 'Mentorship',
                                    body: mentorship,
                                    faIcon: FaIcon(FontAwesomeIcons.users),
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
                                    heading: 'Research',
                                    body: research,
                                    faIcon:
                                        FaIcon(FontAwesomeIcons.researchgate),
                                  ),
                                  ServicesCard(
                                    heading: 'Consultancy',
                                    body: consultancy,
                                    faIcon: FaIcon(FontAwesomeIcons.infoCircle),
                                  ),
                                  ServicesCard(
                                    heading: 'Accounts Management',
                                    body: aManagement,
                                    faIcon:
                                        FaIcon(FontAwesomeIcons.addressBook),
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
                            duration: Duration(milliseconds: 800),
                            child: Row(
                              //show circlular progress
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircularPercentIndicator(
                                  animationDuration: 2500,
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
                                  animationDuration: 2500,
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
                                  lineWidth: 7.0,
                                  animation: true,
                                  percent: 0.92,
                                  center: Text('92.0%'),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: kBlue,
                                  backgroundColor: Colors.yellow,
                                  footer: Center(child: Text('Consultancy')),
                                ), */
                                CircularPercentIndicator(
                                  animationDuration: 2500,
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
                            child: Container(
                              height: 300.0,
                              width: screenSize.width,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                                image: DecorationImage(
                                  image: AssetImage('images/writing-desk.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Padding(
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
