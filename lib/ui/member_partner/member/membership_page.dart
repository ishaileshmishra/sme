import 'package:flutter/material.dart';
import 'package:sme/ui/member_partner/partner/channel_partener_tab.dart';
import 'package:sme/ui/member_partner/membership_tab.dart';
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
        return MembershipTab();
      case 1:
        return ChannelPartnerTab();
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
          BottomNavigationBarItem(icon: Icon(Icons.group_add), title: Text('Membership'), backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Channel Parteners'), backgroundColor: Colors.grey),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
    );


  }
}
