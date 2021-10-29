import 'package:ewtc/animations/entranceFader.dart';
import 'package:ewtc/constants/constants.dart';
import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  static const String contactId = 'contact';
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final fieldsKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final subject = TextEditingController();
  final message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                ResponsiveHandler.isMobileScreen(context)
                    ? Column(
                        children: [
                          TopContainer(
                            height: 200,
                            width: screenSize.width,
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
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
                      )
                    : TopContainer(
                        height: 700,
                        width: screenSize.width,
                        child: Column(
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
                            SizedBox(height: 20),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                    ? Center(
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
                            ],
                          ),
                        ),
                      )
                    : Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
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
                                  width: screenSize.width / 2,
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
                              Center(
                                child: Container(
                                  width: screenSize.width / 2,
                                  height: 300,
                                  child: Column(
                                    children: [
                                      Text(
                                        'SAY HELLO',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Get in touch, send us an email or call us!',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                    ],
                                  ),
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
      ),
    );
  }
}
