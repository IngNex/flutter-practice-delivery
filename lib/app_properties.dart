import 'package:flutter/material.dart';

const Color yellow = Color.fromARGB(255, 84, 191, 253);
const Color mediumYellow = Color.fromARGB(255, 70, 128, 253);
const Color darkYellow = Color.fromARGB(255, 34, 64, 233);
const Color transparentYellow = Color.fromARGB(185, 0, 81, 255);

const Color darkGrey = Color(0xff202020);

const LinearGradient mainButton = LinearGradient(colors: [
  Color.fromARGB(255, 236, 139, 3),
  Color.fromARGB(255, 234, 153, 3),
  Color.fromARGB(255, 216, 143, 16),
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}

/* 
const Color yellow = Color(0xffFDC054);
const Color mediumYellow = Color(0xffFDB846);
const Color darkYellow = Color(0xffE99E22);
const Color transparentYellow = Color.fromRGBO(253, 184, 70, 0.7);



*/

