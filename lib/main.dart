import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/landing_page.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: 'nunito',
    accentColor: CupertinoColors.activeBlue,

  ),
  home: StartPage(),
));




