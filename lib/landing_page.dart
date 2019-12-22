import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/models/drawer_model.dart';
import 'package:sme/ui/channel_partener_page.dart';
import 'package:sme/ui/home_page.dart';
import 'package:sme/ui/instantiated_page.dart';
import 'package:sme/ui/login_page.dart';
import 'package:sme/ui/memvership_page.dart';
import 'package:sme/ui/mettings_page.dart';
import 'package:sme/ui/register_page.dart';
import 'package:sme/ui/sector_page.dart';
import 'package:sme/ui/services_page.dart';
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
        return new HomePage();
      case 1:
        return new InstantiatedPage();
      case 2:
        return new RegisterPage();
      case 3:
        return new LoginScreen();
      case 4:
        return new MembershipPage();
      case 5:
        return new ChannelPartenerPage();
      case 6:
        return new SectorPage();
      case 7:
        return new ServicesPage();
      case 8:
        return new MeetingsPage();
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
      if (i == 2 || i == 5) {
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
                    "SME Rahul Shrivastava",
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0,
                        letterSpacing: 1.2),
                  ),
                  accountEmail: Text(
                    'Facebook : SME business forum',
                    style: TextStyle(
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0),
                  ),
                  currentAccountPicture: Icon(
                    CupertinoIcons.profile_circled,
                    size: 70,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Theme.of(context).primaryColor)),
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
