import 'package:flutter/material.dart';

const Color kOrange = Color(0xFFF57C00);
const Color kBlue = Color(0xFF1A237E);
const colorizeColors = [
  Colors.pink,
  Colors.purple,
  Colors.blue,
  Colors.teal,
  Colors.yellow,
  Colors.red
];
const colorizeTextStyleD = TextStyle(fontSize: 35, fontFamily: 'Horizon');
const colorizeTextStyleM = TextStyle(fontSize: 25, fontFamily: 'Horizon');

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(7.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kOrange, /* width: 1.0 */
    ),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kOrange, /* width: 2.0 */
    ),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);
