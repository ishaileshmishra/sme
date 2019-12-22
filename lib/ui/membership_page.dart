import 'package:flutter/material.dart';
import 'package:sme/ui/channel_partener_page.dart';
import 'package:sme/widgets/text_widgets.dart';

class MembershipPage extends StatefulWidget {

  @override
  _MembershipPageState createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {

  int _selectedIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return ChannelPartnerPage();
      case 1:
        return ChannelPartnerPage();
      default:
        return Center(
            child: Text("Invalid Page Requested Error \n We are under construction",
                style: textHeading()));
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child: _getDrawerItemWidget(_selectedIndex)),//.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Membership'), backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon: Icon(Icons.group), title: Text('Channel Parteners')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
    );


  }
}
