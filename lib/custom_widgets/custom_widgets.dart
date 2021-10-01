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
