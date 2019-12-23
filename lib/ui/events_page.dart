import 'package:flutter/material.dart';
import 'package:sme/ui/forthcoming_page.dart';
import 'package:sme/ui/past_page.dart';
import 'package:sme/widgets/text_widgets.dart';

class EventPage extends StatefulWidget {

  @override
  _EventPageState createState() => _EventPageState();

}

class _EventPageState extends State<EventPage> {

  int _selectedIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return ForthcomingPage();
      case 1:
        return PastPage();
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
          BottomNavigationBarItem(icon: Icon(Icons.arrow_right), title: Text('Forthcoming'), backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_left), title: Text('Past')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
