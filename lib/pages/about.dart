import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static const String aboutId = 'about';
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                height: pageHeight / 3.0,
                width: pageWidth,
                child: Expanded(
                  child: Column(
                    children: [
                      Text(
                        'About Us',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Get to know us',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Divider(),
                  Text('At your service'),
                  Divider(),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome to Ew&tc',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'We are a digital agency',
                        //style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('FEATURES'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                  ),
                  Column(
                    children: [
                      Text('Fun facts about the team and why people prefer us'),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ListTile(
                            leading: CircleAvatar(),
                            title: Text('Service 1'),
                            subtitle: Text('Subtitle'),
                          ),
                          ListTile(
                            leading: CircleAvatar(),
                            title: Text('Service 2'),
                            subtitle: Text('Subtitle'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ListTile(
                            leading: CircleAvatar(),
                            title: Text('Service 3'),
                            subtitle: Text('Subtitle'),
                          ),
                          ListTile(
                            leading: CircleAvatar(),
                            title: Text('Service 4'),
                            subtitle: Text('Subtitle'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Meet our incredible team'),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(),
                        Text('Name'),
                        Text('Title'),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_circle_outlined),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_circle_outlined),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_circle_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(),
                        Text('Name'),
                        Text('Title'),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_circle_outlined),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_circle_outlined),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.account_circle_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
