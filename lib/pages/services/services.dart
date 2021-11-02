import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
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
                      child: Column(
                        children: [
                          ClipPath(
                            clipper: WaveClipperOne(),
                            child: TopContainer(
                              height: 200,
                              width: screenSize.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Services',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'See what we do best',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
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
                                      center: Text('Writing'),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Colors.purple,
                                      backgroundColor: Colors.yellow,
                                    ),
                                    CircularPercentIndicator(
                                      animationDuration: 2500,
                                      radius: 120.0,
                                      lineWidth: 7.0,
                                      animation: true,
                                      percent: 0.94,
                                      center: Text('Training'),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Colors.purple,
                                      backgroundColor: Colors.yellow,
                                    ),
                                    CircularPercentIndicator(
                                      animationDuration: 2500,
                                      radius: 120.0,
                                      lineWidth: 7.0,
                                      animation: true,
                                      percent: 0.92,
                                      center: Text('Consultancy'),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Colors.purple,
                                      backgroundColor: Colors.yellow,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Divider(),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        children: [
                          ClipPath(
                            clipper: WaveClipperOne(),
                            child: TopContainer(
                              height: 750,
                              width: screenSize.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Services',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'See what we do best',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
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
                                      center: Text('Writing'),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Colors.purple,
                                      backgroundColor: Colors.yellow,
                                    ),
                                    CircularPercentIndicator(
                                      animationDuration: 2500,
                                      radius: 120.0,
                                      lineWidth: 7.0,
                                      animation: true,
                                      percent: 0.94,
                                      center: Text('Training'),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Colors.purple,
                                      backgroundColor: Colors.yellow,
                                    ),
                                    CircularPercentIndicator(
                                      animationDuration: 2500,
                                      radius: 120.0,
                                      lineWidth: 7.0,
                                      animation: true,
                                      percent: 0.92,
                                      center: Text('Consultancy'),
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      progressColor: Colors.purple,
                                      backgroundColor: Colors.yellow,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Divider(),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
