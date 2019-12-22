import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDataModel {

  String title;
  IconData icon;
  DrawerDataModel({this.title, this.icon});

}


class BannerItem{

}

class DataOpportunity {
  String title;
  IconData icon;

  DataOpportunity({this.title, this.icon});
}



final drawerItems = [
  DrawerDataModel(title: 'SME BUSINESS FORUM', icon: CupertinoIcons.home),
  DrawerDataModel(title: 'INITIATED BY', icon: CupertinoIcons.bookmark),
  DrawerDataModel(title: 'REGISTER', icon: CupertinoIcons.group),
  DrawerDataModel(title: 'LOGIN', icon: CupertinoIcons.padlock),
  DrawerDataModel(title: 'MEMBERSHIP', icon: CupertinoIcons.settings),
  DrawerDataModel(title: 'CHANNEL PARTENER', icon: CupertinoIcons.location),
  DrawerDataModel(title: 'SECTORS', icon: CupertinoIcons.loop_thick),
  DrawerDataModel(title: 'SERVICES', icon: CupertinoIcons.loop_thick),
  DrawerDataModel(title: 'MEETINGS', icon: CupertinoIcons.loop_thick),
  DrawerDataModel(title: 'EVENTS', icon: CupertinoIcons.clock_solid),
  DrawerDataModel(title: 'GALLERY', icon: CupertinoIcons.photo_camera_solid),
  DrawerDataModel(title: 'ABOUT', icon: Icons.business),
];