import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/models/drawer_model.dart';
import 'package:sme/ui/others/about_page.dart';
import 'package:sme/ui/event/events_page.dart';
import 'package:sme/ui/others/gallery_page.dart';
import 'package:sme/ui/others/home_page.dart';
import 'package:sme/ui/others/instantiated_page.dart';
import 'package:sme/ui/login/login_page.dart';
import 'package:sme/ui/member_partner/member/membership_page.dart';
import 'package:sme/ui/meeting/mettings_page.dart';
import 'package:sme/ui/others/sector_page.dart';
import 'package:sme/ui/others/services_page.dart';
import 'package:sme/widgets/color_widgets.dart';
import 'package:sme/widgets/text_widgets.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return HomePage();
      case 1:
        return InstantiatedPage();
      case 2:
        return LoginScreen();
      case 3:
        return MembershipPage();
      case 4:
        return AboutPage();
      case 5:
        return GalleryPage();
      case 6:
        return EventPage();
      case 7:
        return SectorPage();
      case 8:
        return ServicesPage();
      case 9:
        return MeetingsPage();
      default:
        return Center(
            child: Text(
                "Invalid Page Requested Error \n We are under construction",
                style: textHeading()));
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < drawerItems.length; i++) {
      if (i == 2 || i == 4) {
        drawerOptions
            .add(Divider(thickness: 1, color: Theme.of(context).primaryColor));
      }
      var item = drawerItems[i];
      drawerOptions.add(

        ListTile(

          leading: new Icon(item.icon, size: 30),

          title: new Text(item.title, style: textSmall()),

          selected: i == _selectedDrawerIndex,

          onTap: () => _onSelectItem(i),
        ),

      );
    }

    return Scaffold(
      appBar: applicationBar(context, drawerItems[_selectedDrawerIndex].title),
      drawer: new Drawer(
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,

            children: <Widget>[

              UserAccountsDrawerHeader(

                  accountName: Text(
                    "Rahul Srivastava",
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),


                  currentAccountPicture: Icon(
                    CupertinoIcons.profile_circled,
                    size: 100,
                    color: Colors.white,
                  ),


                  arrowColor: Colors.redAccent,
                  otherAccountsPictures: <Widget>[

                    Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.white60,
                      size: 40,
                    ),

                  ],


                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Theme.of(context).primaryColor)),


              Container(
                //margin: EdgeInsets.all(12),
                child: Column(children: drawerOptions),
              )
            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Snackbar tapped'),
        tooltip: 'Bookmarks',
        hoverColor: Colors.orange,
        child: Icon(
          Icons.bookmark,
          color: Colors.white,
        ),
      ),
    );
  }
}
