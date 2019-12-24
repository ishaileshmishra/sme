import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDataModel {
  String title;
  IconData icon;
  DrawerDataModel({this.title, this.icon});
}

class Partners {
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
  Partners(
      title: 'Startup counsil of india', preview: 'assets/images/partner1.jpg'),
  Partners(
      title: 'SME Business Management institute',
      preview: 'assets/images/partner2.jpg'),
  Partners(
      title: 'India International Trade Center',
      preview: 'assets/images/partner3.jpg'),
  Partners(
      title: 'Maharastra Industrial and Economic Development Association',
      preview: 'assets/images/partner4.jpg'),
];

final drawerItems = [
  DrawerDataModel(title: 'SME BUSINESS FORUM', icon: CupertinoIcons.home),
  DrawerDataModel(title: 'INITIATED BY', icon: CupertinoIcons.bookmark),
  DrawerDataModel(title: 'LOGIN / REGISTER', icon: CupertinoIcons.padlock),
  DrawerDataModel(
      title: 'MEMBERSHIP & CHANNEL PARTENER', icon: CupertinoIcons.group),
  DrawerDataModel(title: 'ABOUT', icon: Icons.business),
  DrawerDataModel(title: 'GALLERY', icon: CupertinoIcons.collections),
  DrawerDataModel(title: 'EVENTS', icon: CupertinoIcons.tags),
  DrawerDataModel(title: 'SECTORS', icon: CupertinoIcons.flag),
  DrawerDataModel(title: 'SERVICES', icon: CupertinoIcons.eye_solid),
  DrawerDataModel(title: 'MEETINGS', icon: CupertinoIcons.location),
];

class Wallpaper {
  String title;
  String imglink;
  Wallpaper({this.title, this.imglink});
}

List<Wallpaper> wallItemsSea = [
  Wallpaper(
      title: 'The Aawesome Sea',
      imglink:
          'https://images.pexels.com/photos/1001682/pexels-photo-1001682.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'The Lovely Sea',
      imglink:
          'https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'Dadar Beach',
      imglink:
          'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'Juhu Chaupati corner',
      imglink:
          'https://images.pexels.com/photos/533923/pexels-photo-533923.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'The lots of sea',
      imglink:
          'https://images.pexels.com/photos/237272/pexels-photo-237272.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'The long innings',
      imglink:
          'https://images.pexels.com/photos/462024/pexels-photo-462024.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'Nirmala Sea',
      imglink:
          'https://images.pexels.com/photos/1295138/pexels-photo-1295138.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'J&K Conrber of pnnd',
      imglink:
          'https://images.pexels.com/photos/1320684/pexels-photo-1320684.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
  Wallpaper(
      title: 'Iunke iuneinei ueniueniuen',
      imglink:
          'https://images.pexels.com/photos/273886/pexels-photo-273886.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
];

class AboutModel {
  final String title;
  List<String> contents = [];
  final IconData icon;
  AboutModel(this.title, this.contents, this.icon);
}



final String membership = "SME Business Forum would like to invite you to enrol as the member to explore new business opportunities at State & National Level, exchange business leads & inquiries, business referrals, identify new business partners & clients, channelise bank finance, Export / Import finance, venture capital, private equity & investment, export business enquiries, import facilitation, launching and marketing of new products and services at various SME Business Forum activities. SME Business Forum is a dynamic business networking platform of India, established on 3rd May 2008 by SME Chamber of India, providing opportunities to Entrepreneurs, Buyers, Manufacturers, Suppliers, Investors, Distributors, Franchisees, Service providers and Senior Executives of mid-corporates, large corporates, MNCs, Government agencies and PSUs for business connectivity. SME Members are taking advantages & benefits of the Forum at various chapters – Mumbai, Pune, Ahmedabad, Bangalore, Nashik, Chennai, Rajkot, Hyderabad, Vadodara and Surat as per the business activities & interest for business growth and expansion.";