import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/pages/about.dart';
import 'package:ewtc/pages/contact.dart';
import 'package:ewtc/pages/home.dart';
import 'package:ewtc/pages/services.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;
  final Widget? child;
  final EdgeInsets? padding;

  const TopContainer(
      {Key? key, this.padding, this.child, this.color, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.blueAccent.shade100,
              kBlue,
            ]),
      ),
      child: child,
      color: color,
      width: width,
    );
  }
}

class ResponsiveHandler extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget desktop;
  const ResponsiveHandler(
      {Key? key, required this.desktop, this.mobile, this.tablet})
      : super(key: key);

  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return desktop;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return tablet ?? desktop;
        } else {
          return mobile ?? desktop;
        }
      },
    );
  }
}

class AppBarContents extends StatefulWidget {
  final double? opacity;
  const AppBarContents({this.opacity});

  @override
  _AppBarContentsState createState() => _AppBarContentsState();
}

class _AppBarContentsState extends State<AppBarContents> {
  final List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.transparent.withOpacity(widget.opacity!),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    //height: 70,
                    child: Image.asset('images/elite_transparent2.png'),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[0] = true
                                  : _isHovering[0] = false;
                            });
                          },
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, HomePage.homeId);
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Home',
                                style: TextStyle(
                                  color: _isHovering[0]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[0],
                                child: Container(
                                  height: 2,
                                  width: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[1] = true
                                  : _isHovering[1] = false;
                            });
                          },
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, About.aboutId);
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                  color: _isHovering[1]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[1],
                                child: Container(
                                  height: 2,
                                  width: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[2] = true
                                  : _isHovering[2] = false;
                            });
                          },
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, Services.servicesId);
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Services',
                                style: TextStyle(
                                  color: _isHovering[2]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[2],
                                child: Container(
                                  height: 2,
                                  width: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onHover: (value) {
                            setState(() {
                              value
                                  ? _isHovering[3] = true
                                  : _isHovering[3] = false;
                            });
                          },
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, Contact.contactId);
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Contact',
                                style: TextStyle(
                                  color: _isHovering[3]
                                      ? Colors.blue.shade200
                                      : Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[3],
                                child: Container(
                                  height: 2,
                                  width: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class EwtcDrawer extends StatefulWidget {
  const EwtcDrawer({Key? key}) : super(key: key);

  @override
  _EwtcDrawerState createState() => _EwtcDrawerState();
}

class _EwtcDrawerState extends State<EwtcDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Image.asset(
                  'images/elite_transparent2.png',
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, HomePage.homeId);
                  });
                },
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Divider(),
              ListTile(
                title: Text('About', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, About.aboutId);
                  });
                },
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Divider(),
              ListTile(
                title: Text('Services', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, Services.servicesId);
                  });
                },
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Divider(),
              ListTile(
                title:
                    Text('Contact Us', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, Contact.contactId);
                  });
                },
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String? value1, value2;
  final Icon? icon;
  const ContactCard({
    Key? key,
    this.icon,
    this.value1,
    this.value2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60.0),
          topRight: Radius.circular(60.0),
          bottomRight: Radius.circular(60.0),
          bottomLeft: Radius.circular(60.0),
        )),
        width: 200,
        height: 140,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                child: icon,
              ),
              SizedBox(height: 5),
              Text(value1!,
                  textAlign: TextAlign.center,
                  style: (Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: kOrange))),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 5),
              Text(value2!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
