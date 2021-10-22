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
                Colors.blueAccent,
              ]),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          )),
      child: child,
      color: color,
      width: width,
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      //color: _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Developed in 💙 with ",
              /* style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300,
                color: _themeProvider.lightTheme ? Colors.black : Colors.white,
              ), */
            ),
            InkWell(
              //onTap: () => launchURL("https://github.com/mhmzdev/DevFolio"),
              child: Text(
                "Flutter",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
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
        color: Colors.blueGrey.shade900.withOpacity(widget.opacity!),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             /*  Text(
                'EWTC',
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ), */
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
                      onTap: () {},
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
                      onTap: () {},
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
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Contact',
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
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Services',
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
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              ListTile(
                title: Text('Home'),
                onTap: () {
                  setState(() {});
                },
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Divider(),
              ListTile(
                title: Text('About'),
                onTap: () {
                  setState(() {});
                },
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Divider(),
              ListTile(
                title: Text('Services'),
                onTap: () {
                  setState(() {});
                },
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Divider(),
              ListTile(
                title: Text('Contact Us'),
                onTap: () {
                  setState(() {});
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
