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
    final double pageHeight = MediaQuery.of(context).size.height;
    final double pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TopContainer(
                  height: pageHeight / 3,
                  width: pageWidth,
                  child: Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Contact Us',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Get in touch',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: Column(
                                      children: [
                                        Text('Address'),
                                        Text('Ongata Rongai, Nairobi, Kenya'),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 5,
                                    left: 75,
                                    right: 75,
                                    child: CircleAvatar(
                                      child: Icon(Icons.home),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: Column(
                                      children: [
                                        Text('Contact'),
                                        Text('+254700523823'),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 5,
                                    left: 75,
                                    right: 75,
                                    child: CircleAvatar(
                                      child: Icon(Icons.phone),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: Column(
                                      children: [
                                        Text('Socials'),
                                        Text('info'),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 5,
                                    left: 75,
                                    right: 75,
                                    child: CircleAvatar(
                                      child: Icon(Icons.share),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    child: Column(
                                      children: [
                                        Text('Mail'),
                                        Text(
                                            'hello@elitewritingconsultants.com'),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 5,
                                    left: 75,
                                    right: 75,
                                    child: CircleAvatar(
                                      child: Icon(Icons.email),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: pageWidth / 2.0,
                      child: Form(
                        key: fieldsKey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              ],
                            ),
                            SizedBox(height: 5),
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
                            SizedBox(height: 5),
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
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {},
                              child: Text('Send'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: pageWidth / 2.0,
                      child: Column(
                        children: [
                          Text(
                            'SAY HELLO',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Get in touch, send us an email or call us!',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}