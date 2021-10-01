import 'package:ewtc/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  static const String servicesId = 'services';
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
                          'Services',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'See what we do best',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text('Service 3'),
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
                      title: Text('Service 4'),
                      subtitle: Text('Subtitle'),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text('Service 5'),
                      subtitle: Text('Subtitle'),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text('Service 6'),
                      subtitle: Text('Subtitle'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(),
                    CircleAvatar(),
                    CircleAvatar(),
                    CircleAvatar(),
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
