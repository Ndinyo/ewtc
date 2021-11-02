import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:ewtc/service/service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Contact extends StatefulWidget {
  static const String contactId = 'contact';
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  double _opacity = 0;
  final fieldsKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final subject = TextEditingController();
  final message = TextEditingController();
  final service = Service();
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
                              height: 250,
                              width: screenSize.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  EntranceFader(
                                    offset: Offset(0, 0),
                                    delay: Duration(seconds: 1),
                                    duration: Duration(milliseconds: 800),
                                    child: Text(
                                      'Contact Us',
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  EntranceFader(
                                    offset: Offset(0, 0),
                                    delay: Duration(seconds: 2),
                                    duration: Duration(milliseconds: 800),
                                    child: Text(
                                      'Get in touch',
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Divider(),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: screenSize.width,
                            height: 500,
                            child: Column(
                              children: [
                                //SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: ContactCard(
                                    value1: 'Address',
                                    value2: 'Ongata Rongai, Nairobi, Kenya',
                                    icon: Icon(Icons.home),
                                  ),
                                ),
                                SizedBox(height: 10), //SizedBox(width: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 3),
                                  duration: Duration(milliseconds: 800),
                                  child: ContactCard(
                                      value1: 'Contact',
                                      value2: '+(254) 700 523 823',
                                      icon: Icon(Icons.phone)),
                                ),
                                SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 4),
                                  duration: Duration(milliseconds: 800),
                                  child: ContactCard(
                                      value1: 'E-Mail',
                                      value2:
                                          'hello@elitewritingconsultants.com',
                                      icon: Icon(Icons.email)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : TopContainer(
                      height: 750,
                      width: screenSize.width,
                      child: Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 50),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 1),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'Contact Us',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: Text(
                                    'Get in touch',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 2),
                                  duration: Duration(milliseconds: 800),
                                  child: ContactCard(
                                    value1: 'Address',
                                    value2: 'Ongata Rongai, Nairobi, Kenya',
                                    icon: Icon(Icons.home),
                                  ),
                                ),
                                //SizedBox(width: 10),
                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 3),
                                  duration: Duration(milliseconds: 800),
                                  child: ContactCard(
                                      value1: 'Contact',
                                      value2: '+(254) 700 523 823',
                                      icon: Icon(Icons.phone)),
                                ),

                                EntranceFader(
                                  offset: Offset(0, 0),
                                  delay: Duration(seconds: 4),
                                  duration: Duration(milliseconds: 800),
                                  child: ContactCard(
                                      value1: 'E-Mail',
                                      value2:
                                          'hello@elitewritingconsultants.com',
                                      icon: Icon(Icons.email)),
                                ),
                              ]),
                        ],
                      ),
                    ),
              SizedBox(height: 20),
              ResponsiveHandler.isMobileScreen(context)
                  ? EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 4),
                      duration: Duration(milliseconds: 800),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Divider(),
                              Text(
                                'SAY HELLO',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Get in touch, send us an email or call us!',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      //color: kBlue,
                                      borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0),
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                  )),
                                  width: 300,
                                  height: 360,
                                  child: Form(
                                    key: fieldsKey,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration:
                                              kTextFieldDecoration.copyWith(
                                            hintText: 'Name',
                                            labelText: 'Name',
                                            prefixIcon: Icon(
                                                Icons.account_circle_outlined),
                                          ),
                                          controller: name,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Text Required';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: 10),
                                        TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration:
                                              kTextFieldDecoration.copyWith(
                                            hintText: 'Email',
                                            labelText: 'Email',
                                            prefixIcon: Icon(Icons.email),
                                          ),
                                          controller: email,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Text Required';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: 10),
                                        TextFormField(
                                          textAlign: TextAlign.center,
                                          decoration:
                                              kTextFieldDecoration.copyWith(
                                            hintText: 'Subject',
                                            labelText: 'Subject',
                                            prefixIcon: Icon(Icons.title),
                                          ),
                                          controller: subject,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Text Required';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: 10),
                                        TextFormField(
                                          textAlign: TextAlign.center,
                                          maxLines: 4,
                                          decoration:
                                              kTextFieldDecoration.copyWith(
                                            hintText: 'Message',
                                            labelText: 'Message',
                                            prefixIcon: Icon(Icons.message),
                                          ),
                                          controller: subject,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Text Required';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: 20),
                                        Container(
                                          width: 160,
                                          height: 30,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.orangeAccent),
                                              ),
                                              onPressed: () {},
                                              child: Text('Send',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5!
                                                      .copyWith(
                                                          color:
                                                              Colors.white))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
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
                            ],
                          ),
                        ),
                      ),
                    )
                  : EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 4),
                      duration: Duration(milliseconds: 800),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  //color: kBlue,
                                  borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              )),
                              width: 450,
                              height: 360,
                              child: Form(
                                key: fieldsKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: kTextFieldDecoration.copyWith(
                                        hintText: 'Name',
                                        labelText: 'Name',
                                        prefixIcon:
                                            Icon(Icons.account_circle_outlined),
                                      ),
                                      controller: name,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Text Required';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: kTextFieldDecoration.copyWith(
                                        hintText: 'Email',
                                        labelText: 'Email',
                                        prefixIcon: Icon(Icons.email),
                                      ),
                                      controller: email,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Text Required';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      decoration: kTextFieldDecoration.copyWith(
                                        hintText: 'Subject',
                                        labelText: 'Subject',
                                        prefixIcon: Icon(Icons.title),
                                      ),
                                      controller: subject,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Text Required';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      textAlign: TextAlign.center,
                                      maxLines: 4,
                                      decoration: kTextFieldDecoration.copyWith(
                                        hintText: 'Message',
                                        labelText: 'Message',
                                        prefixIcon: Icon(Icons.message),
                                      ),
                                      controller: subject,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Text Required';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: 160,
                                      height: 30,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.orangeAccent),
                                          ),
                                          onPressed: () {},
                                          child: Text('Send',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5!
                                                  .copyWith(
                                                      color: Colors.white))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 450,
                              height: 300,
                              child: Column(
                                children: [
                                  Text(
                                    'SAY HELLO',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Get in touch, send us ',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'an email or call us!',
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          child:
                                              FaIcon(FontAwesomeIcons.facebook),
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
                                          child:
                                              FaIcon(FontAwesomeIcons.twitter),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        radius: 15,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          child:
                                              FaIcon(FontAwesomeIcons.linkedin),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundColor: Colors.teal,
                                        radius: 15,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          child:
                                              FaIcon(FontAwesomeIcons.whatsapp),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
