import 'package:flutter/material.dart';

const Color kOrange = Color(0xFFF57C00);
const Color kBlue = Color(0xFF1A237E);
const colorizeColors = [
  kOrange,
  //Colors.purple,
  kBlue,
  Colors.white,
  //Colors.pink,
  Colors.yellow,
  //Colors.red
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

const String writing =
    'Our team of seasoned professional writers are skilled in Essay writing, Research paper witing, Thesis/Dissertation, Research proposal, Literature review, Lab report and Annotated bibliography. We employ the following, formal and unbiased, clear and precise language, focused and well-structured text, well-sourced, correct and consistent methodologies in our writing.';

const String training =
    'Being an integral aspect, professional training is essential in order to become a top-notch writer. We offer training through practice and instruction which requires effort and smart work, since the skills and training we offer will develop you fully to specific useful competencies.';

const String mentorship =
    'Being an indispensable part of work and culture, it is of utmost importance to equip yourself with the right mentors. Our abled mentors will take time to understand your goals and help you set yourself up for significant career transitions. It’s important to work productively with us to achieve your set of goals. ';

const String research =
    'We employ systemic investigation into and study of materials and sources, with sole aim to establish facts, reach conclusions and make informed decisions.';

const String consultancy =
    'Our professionals in diverse fields will give you expert advice. We take the initiative to advice you on best practices in writing, i.e. which field to specialize in and how to equip yourself with hands-on experience in your field of choice. How to become a master in your craft and moreso, how to earn more and make strides!';

const String sDevelopment =
    'We also pride ourselves in Software Development, coupled with design and development skills. Not only do we write but also develop beautiful applications ranging from mobile to web and custom softwares to suit your business needs.';

const String aManagement =
    'Top-notch account management strategies are a must for any writing account. Our professional team is equiped with the expertise on up-to-date account management. Meaning accounts get positive ratings, gets an influx of orders and great reviews which ensures accounts are future-proofed and durable.';
