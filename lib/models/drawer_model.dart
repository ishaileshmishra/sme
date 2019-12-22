import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDataModel {
  String title;
  IconData icon;
  DrawerDataModel({this.title, this.icon});
}


class Partners{
  String title;
  String preview;
  Partners({this.title, this.preview});
}

class DataOpportunity {
  String title;
  IconData icon;
  DataOpportunity({this.title, this.icon});
}


final partnerList = [
  Partners(title: 'Startup counsil of india', preview: 'assets/images/partner1.jpg'),
  Partners(title: 'SME Business Management institute', preview: 'assets/images/partner2.jpg'),
  Partners(title: 'India International Trade Center', preview: 'assets/images/partner3.jpg'),
  Partners(title: 'Maharastra Industrial and Economic Development Association', preview: 'assets/images/partner4.jpg'),
];


final drawerItems = [
  DrawerDataModel(title: 'SME BUSINESS FORUM', icon: CupertinoIcons.home),
  DrawerDataModel(title: 'INITIATED BY', icon: CupertinoIcons.bookmark),
  DrawerDataModel(title: 'LOGIN / REGISTER', icon: CupertinoIcons.padlock),
  DrawerDataModel(title: 'MEMBERSHIP & CHANNEL PARTENER', icon: CupertinoIcons.group),
  DrawerDataModel(title: 'ABOUT', icon: Icons.business),
  DrawerDataModel(title: 'GALLERY', icon: CupertinoIcons.collections),
  DrawerDataModel(title: 'EVENTS', icon: CupertinoIcons.tags),
  DrawerDataModel(title: 'SECTORS', icon: CupertinoIcons.flag),
  DrawerDataModel(title: 'SERVICES', icon: CupertinoIcons.eye_solid),
  DrawerDataModel(title: 'MEETINGS', icon: CupertinoIcons.location),
];