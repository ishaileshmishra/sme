import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme/ui/event_page.dart';
import 'package:sme/ui/exhibition_page.dart';

class ForthcomingPage extends StatefulWidget {
  @override
  _ForthcomingPageState createState() => _ForthcomingPageState();
}

class _ForthcomingPageState extends State<ForthcomingPage> {
  int _selectedIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded( child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(top: 10),
              children: <Widget>[
                CupertinoSegmentedControl(
                  children: {
                    0: Text("Event"),
                    1: Text("Exhibition"),
                  },
                  groupValue: _selectedIndexValue,
                  onValueChanged: (value) {
                    setState(() => _selectedIndexValue = value);
                  },
                ),
                _selectedIndexValue == 0 ? EventPage() : ExhibitionPage()
              ],
            ),
          )
        ],
      ),
      //),
    );
  }
}
