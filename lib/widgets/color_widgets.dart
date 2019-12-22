import 'package:flutter/material.dart';
import 'package:flutter_banner_swiper/flutter_banner_swiper.dart';
import 'package:sme/models/drawer_model.dart';

Widget smeActionBar() {
  return AppBar(
    elevation: 1.5,
    centerTitle: true,
    title: Text('SME Business Forum'.toUpperCase()),
    leading: Container(
      child: Icon(Icons.menu),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue[700],
      ),
    ),
    actions: <Widget>[
      Container(
        padding: EdgeInsets.only(right: 12),
        child: Icon(Icons.search),
      )
    ],
  );
}

Color accentColor() {
  return Colors.orange;
}

Color primaryColor() {
  return Colors.grey;
}

final kHintTextStyle = TextStyle(
  color: Colors.white54,
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  letterSpacing: 1.5,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.grey[600],
  borderRadius: BorderRadius.circular(30.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

Widget applicationBar(BuildContext context, String title) {
  return AppBar(
    elevation: 2,
    title: Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 21.0),
    ),
    centerTitle: true,
    leading: Builder(
        builder: (context) => IconButton(
              icon: Image.asset('assets/images/menu.png',
                  height: 30,
                  width: 30,
                  color: Colors
                      .white), //Icon(Icons.view_list, color: Colors.white,),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.picture_in_picture_alt,
          color: Colors.white,
          size: 30,
        ),
        tooltip: 'Gallery',
        padding: EdgeInsets.only(right: 12),
        onPressed: () => print('Open Gallery'),
      ),
    ],
  );
}

Widget autoScrollBanner() {
  List<String> bannerData = [];
  bannerData.add('assets/images/banner1.jpeg');
  bannerData.add('assets/images/banner2.jpeg');
  bannerData.add('assets/images/banner3.jpeg');
  bannerData.add('assets/images/banner4.jpg');
  bannerData.add('assets/images/banner5.jpg');
  bannerData.add('assets/images/banner6.jpg');

  return Container(
    padding: EdgeInsets.only(top: 5),
    child: BannerSwiper(
      height: 100,
      width: 60,
      length: bannerData.length,
      showIndicator: true,
      spaceMode: true,
      getwidget: (index) {
        return GestureDetector(
            child: Image.asset(
              bannerData[index % bannerData.length],
              fit: BoxFit.cover,
            ),
            onTap: () => print('banner Tapped $index'));
      },
    ),
  );
}

Widget gridOpportunity(BuildContext context) {
  List<DataOpportunity> data = [];
  data.add(
      DataOpportunity(title: 'Branding & Marketing', icon: Icons.business));
  data.add(
      DataOpportunity(title: 'Find Investors', icon: Icons.monetization_on));
  data.add(DataOpportunity(
      title: 'Find Service Providers', icon: Icons.room_service));
  data.add(DataOpportunity(title: 'Find Buyers', icon: Icons.business_center));
  data.add(DataOpportunity(title: 'Find Suppliers', icon: Icons.linear_scale));
  data.add(
      DataOpportunity(title: 'International Trade', icon: Icons.card_travel));

  return GridView.count(
      crossAxisCount: 2,
      children: List.generate(data.length, (index) {
        return Center(
            child: Container(
          padding: EdgeInsets.all(8),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    data[index].icon,
                    color: Colors.white60,
                    size: 80,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(data[index].title,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        )
            //)
            );
      }));
}

Widget horizontalCircleList(BuildContext context) {
  List<DataOpportunity> data = [];
  data.add(
      DataOpportunity(title: 'Branding & Marketing', icon: Icons.business));
  data.add(
      DataOpportunity(title: 'Find Investors', icon: Icons.monetization_on));
  data.add(DataOpportunity(
      title: 'Find Service Providers', icon: Icons.room_service));
  data.add(DataOpportunity(title: 'Find Buyers', icon: Icons.business_center));
  data.add(DataOpportunity(title: 'Find Suppliers', icon: Icons.linear_scale));
  data.add(
      DataOpportunity(title: 'International Trade', icon: Icons.card_travel));

  return ListView.builder(
    itemCount: data.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Center(
          child: Container(
        padding: EdgeInsets.all(8),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  data[index].icon,
                  color: Colors.white60,
                  size: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                width: 100,
                child: Text(data[index].title,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      )
          //)
          );
    },
  );
}
